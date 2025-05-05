###cloud vars


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
  description = "VPC network & subnet name"
}

#variable "vpc_name_db" {
#  type        = string
#  default     = "develop_db"
#  description = "VPC network & subnet name"
#}


#variable "vm_web_image"{
#  type        = string
#  default     = "ubuntu-2004-lts"
#  description = "Image install OS"
#}

#variable "vm_web_name" {
#  type        = string
#  default     = "netology-develop-platform-web"
#  description = "Name VM"  
#}

#variable "vm_web_platform_id"{
#  type        = string
#  default     = "standard-v1"
#  description = "platform_id"
#}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIN1LG5zGHKHJ+eV+0Fmj6ZzPMStaYwztTeGm4Qez2mI3"
  description = "ssh-keygen -t ed25519"
}

variable "vms_resources" {
  type        = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  description = "VM Resources"
}

variable "metadata" {
  type = map(string)
  description = "Access"

}
