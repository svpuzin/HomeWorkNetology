###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

###

variable "image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "The name of the image family to which this image belongs."
}

variable "count-VM" {
  type = number
  default = 2
  description =  "count Vm"
  
}
variable "resource-VM" {
  type = object({
    cores         = number
    memory        = number
    core_fraction = number
  })
  default = {
    cores         = 2
    memory        = 1
    core_fraction = 5
  }
}
 variable "vm_web_image_family"{
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Family fot install OS"
}
 variable "metadata" {
  type = object({
    serial-port-enable = number
    ssh-keys = string
    })
  default = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:ssh-ed25519 sh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIN1LG5zGHKHJ+eV+0Fmj6ZzPMStaYwztTeGm4Qez2mI3"
  } 
 }


###

variable "for-each-VM" {
  type = list(object({
    vm_name = string
    cpu  = number
    ram = number
    disk_volume = number
  }))
  default = [ 
   {
    vm_name = "main"
    cpu  = 2
    ram = 2
    disk_volume = 20  
  },
  {
    vm_name = "replica"
    cpu  = 4
    ram = 4
    disk_volume = 40  
  }
  ]   
 }
