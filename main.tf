terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("credentials.json")
  project = "automacao-stage"
  region  = "us-central1"
  zone    = "us-central1-c"
}

#Vault integração

provider "vault" {
	address = "http://0.0.0.0:8200/"
	token = "hvs.5zqLqOVSkxxxxxxl1dgE7yqV"
  #VAULT_ADDR = "http://0.0.0.0:8200/"
	#VAULT_TOKEN = "root"
}

resource "vault_mount" "kvv1" {
  path        = "kvv1"
  type        = "kv"
  options     = { version = "1" }
  description = "KV Version 1 secret engine mount"
}

resource "vault_kv_secret" "secret" {
  path = "${vault_mount.kvv1.path}/secret"
  data_json = jsonencode(
  {
    zip = "zap",
    foo = "bar"
  }
  )
}

data "vault_kv_secret" "secret_data" {
  path = vault_kv_secret.secret.path
}

#recurso ec2 gcp



resource "google_compute_instance" "primeiravm" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-central1-c"

  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

   network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }


  metadata_startup_script = "echo hi > /test.txt"


}


