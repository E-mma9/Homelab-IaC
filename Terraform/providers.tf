terraform {
  required_providers {
    proxmox = {
      source = "bgp/proxmox"
      version = "0.106.0"
    }
  }
}

provider "proxmox" {
  endpoint = "https://192.168.1.249:8006/"
  insecure = tru
  api_token = "terraform@pve!provider=  ssh {
    agent = true
    username = "root"  # required when using api_token
  }
}
