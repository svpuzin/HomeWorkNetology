variable "vm_web_image"{
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image install OS"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Name VM"
}

variable "vm_web_platform_id"{
  type        = string
  default     = "standard-v1"
  description = "platform_id"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Name DB VM"
}

variable "vm_db_platform_id"{
  type        = string
  default     = "standard-v1"
  description = "platform_id"
}

variable "default_zone_db"{
  type        = string
  default     = "ru-central1-b"
  description = "Zone DB VM"
}

variable "default_cidr_db" {
  type        = list(string)
  default     = ["10.0.4.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name_db" {
  type        = string
  default     = "develop-db"
  description = "VPC network & subnet name"
}

variable "vm_db_image"{
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Image install OS"
}

