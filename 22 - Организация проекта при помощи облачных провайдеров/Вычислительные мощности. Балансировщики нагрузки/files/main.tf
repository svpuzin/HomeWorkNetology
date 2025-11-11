# 1. Создание бакета Object Storage

# Создание статического ключа доступа
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = var.service_account_id
  description        = "static access key for object storage"
}

resource "yandex_storage_bucket" "bucket" {
  bucket    = "${var.name}-${formatdate("YYYYMMDD-hhmmss", timestamp())}" 
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  anonymous_access_flags {
    read = true     
    }
}

# Загрузка изображения в бакет
resource "yandex_storage_object" "image" {
  bucket     = yandex_storage_bucket.bucket.bucket
  key        = "test.jpg"         
  source     = "test.jpg"         
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
}

# 2. Создание Instance Group с LAMP

# Сеть и подсеть
resource "yandex_vpc_network" "network" {
  name = "network"
}

resource "yandex_vpc_subnet" "subnet" {
  name           = "public-subnet"
  zone           = var.default_zone
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = var.default_cidr
}

# Security Group для веб-серверов
resource "yandex_vpc_security_group" "sg" {
  name        = "web-sg"
  network_id  = yandex_vpc_network.network.id

  ingress {
    protocol       = "TCP"
    port           = 80
    v4_cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol       = "ANY"
    v4_cidr_blocks = ["0.0.0.0/0"]
  }
}

# Instance Group с LAMP
resource "yandex_compute_instance_group" "lamp_group" {
  name               = "lamp-group"
  service_account_id = var.service_account_id

  # Конфигурация шаблона ВМ
  instance_template {
    platform_id = "standard-v3"
    resources {
      cores  = var.vm_cores
      memory = var.vm_memory
    }
   
    # Использование LAMP образа
    boot_disk {
      initialize_params {
        image_id = "fd827b91d99psvq5fjit"
      }
    }
    
    # Настройка сети
    network_interface {
      network_id         = yandex_vpc_network.network.id
      subnet_ids         = [yandex_vpc_subnet.subnet.id]
      security_group_ids = [yandex_vpc_security_group.sg.id]
      nat                = true
    }

    # Метаданные с пользовательским скриптом
    metadata = {
      ssh-keys = "ubuntu:${file("~/.ssh/svpuzin.pub")}"
      user-data = <<-EOT
        #!/bin/bash
        echo '<html><body><img src="https://storage.yandexcloud.net/${yandex_storage_bucket.bucket.bucket}/${yandex_storage_object.image.key}"></body></html>' > /var/www/html/index.html
        EOT
    }
  }

  # Настройки масштабирования
  scale_policy {
    fixed_scale {
      size = var.scale_count
    }
  }
  # Зоны доступности для размещения ресурсов
  allocation_policy {
    zones = [var.default_zone]
  }

  # Стратегия развертывания, обновления и масштабирования ресурсов
  deploy_policy {
    max_unavailable = 1
    max_expansion   = 0
  }

  # Проверка состояния ВМ
  health_check {
    interval = 30
    timeout  = 5
    http_options {
      port = 80
      path = "/"
    }
  }
    load_balancer {
        target_group_name = "lamp-group"
    }
}


# 3. Сетевой баллансировщик
resource "yandex_lb_network_load_balancer" "nlb" {
  name = "network-lb"

  listener {
    name = "http-listener"
    port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_compute_instance_group.lamp_group.load_balancer[0].target_group_id

    healthcheck {
      name = "http"
      interval = 2
      timeout = 1
      unhealthy_threshold = 2
      healthy_threshold = 5
      http_options {
        port = 80
        path = "/"
      }
    }
  }
}
