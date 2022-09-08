terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.77.0"
    }
  }
}

provider "yandex" {
  token     = "y0_AgAAAAAjCdAfAATuwQAAAADNmgozSa-7t_zKRI-lrXsa3XlNBxktdTU"
  cloud_id  = "b1glbsh3467qsiaunaik"
  folder_id = "b1g479l7nkv0jkbv5vjq"
  zone      = "ru-central1-b"
}

resource "yandex_compute_instance" "vm" {
  name = var.vm
  platform_id = "standard-v3"

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = "fd8kdq6d0p8sij7h5qe3"
      size = 15
    }
  }

  network_interface {
    subnet_id = "e2lgnkkp6bq6uv4gvl8p"
    nat       = true
  }

  metadata = {
#    user-data = "${file("meta.txt")}"
     ssh-keys = "ubuntu:${file("/root/.ssh/w.pub")}"
 }
}
