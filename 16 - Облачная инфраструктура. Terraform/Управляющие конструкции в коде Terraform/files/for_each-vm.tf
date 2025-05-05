resource "yandex_compute_instance" "for-each-VM" {
  depends_on = [ yandex_compute_instance.default ]
  for_each = {for vm in var.for-each-VM : vm.vm_name => vm }
  hostname    = each.value.vm_name
  name        = each.value.vm_name
  platform_id = "standard-v1"
  zone        = var.default_zone

  resources {
    cores  = each.value.cpu
    memory = each.value.ram
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size = each.value.disk_volume
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
