resource "proxmox_virtual_environment_container" "test_container" {
  node_name    = "pve"
  unprivileged = true

  clone {
    vm_id = 9000
  }

  initialization {
    hostname = "test-container"
    ip_config {
      ipv4 { address = "dhcp" }
    }
  }

  network_interface {
    name   = "eth0"
    bridge = "vmbr0"
  }

  disk {
    datastore_id = "local-lvm"
    size         = 4
  }

  features {
    nesting = true
  }
}