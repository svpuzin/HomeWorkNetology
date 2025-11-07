output "ip_addresses" {
  description = "IP addresses"
  value = {
    public-vm  = yandex_compute_instance.public-vm.network_interface[0].nat_ip_address
    private-vm  = yandex_compute_instance.private-vm.network_interface[0].ip_address
    
  }
} 
