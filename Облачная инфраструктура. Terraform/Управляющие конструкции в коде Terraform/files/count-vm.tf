resource "yandex_compute_instance" "default" {
  count = var.count-VM
  name        = "web-${count.index +1}"
  platform_id = "standard-v1"
  zone        = var.default_zone

  resources {
    cores         = var.resource-VM.cores
    memory        = var.resource-VM.memory
    core_fraction = var.resource-VM.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  network_interface {
    index  = 1
    subnet_id = yandex_vpc_subnet.develop.id
    security_group_ids = [yandex_vpc_security_group.example.id]
    nat = true
  }

  metadata = {
    serial-port-enable = var.metadata.serial-port-enable
    ssh-keys           =  var.metadata.ssh-keys
  }
}
