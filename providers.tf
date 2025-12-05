terraform {
  cloud {
    organization = "Skandha"
    workspaces {
      name = "Proxmox_Icon"
    }
  }
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.70.0"  # Latest with good import support
    }
  }
}

provider "proxmox" {
  endpoint = "https://192.168.9.224:8006/"
  insecure = true
  username = var.username
  password = var.password
}