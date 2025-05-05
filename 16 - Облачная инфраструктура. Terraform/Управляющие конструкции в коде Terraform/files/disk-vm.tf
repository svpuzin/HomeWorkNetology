resource "yandex_compute_disk" "storage_disks" {
  count = 3
  name  = "storage-disk-${count.index + 1}"
  size  = 1 
  zone  = var.default_zone
}


resource "yandex_compute_instance" "storage" {
  name        = "storage"
  platform_id = "standard-v1"
  zone        = var.default_zone

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    nat                = true
    security_group_ids = [yandex_vpc_security_group.example.id]
  }

  metadata = {
    serial-port-enable = var.metadata.serial-port-enable
    ssh-keys           =  var.metadata.ssh-keys
  }

  ###

  dynamic "secondary_disk" {
    for_each = toset(yandex_compute_disk.storage_disks[*].id)
    content {
      disk_id = secondary_disk.value
    }
  }
}
