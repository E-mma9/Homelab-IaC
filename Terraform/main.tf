resource "proxmox_virtual_environment_container" "test_container" {
  node_name = "pve"
  count = 5
  unprivileged = true
  features {
    nesting = true
  }

  initialization {
    hostname = "Test-container"

    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    user_account {

      password = "emmanuel"
    }
  }

  network_interface {
    name = "eth0"
    bridge = "vmbr0"
  }

  disk {
    datastore_id = "local-lvm"
    size         = 4
  }

   operating_system {
    template_file_id = "local:vztmpl/debian-13-standard_13.1-2_amd64.tar.zst"
  }
}


