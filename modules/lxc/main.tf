resource "proxmox_virtual_environment_container" "lxc" {
  description         = var.description
  node_name           = var.node_name
  protection          = var.protection
  start_on_boot       = var.start_on_boot
  started             = true
  tags                = var.tags
  template            = false
  timeout_clone       = null
  timeout_create      = null
  timeout_delete      = null
  timeout_update      = null
  unprivileged        = var.unprivileged

  console {
    enabled   = true
    tty_count = 2
    type      = "tty"
  }

  cpu {
    architecture = "amd64"
    cores        = var.cpu_cores
    units        = var.cpu_units
  }

  disk {
    acl           = false
    datastore_id  = var.datastore
    mount_options = []
    quota         = false
    replicate     = false
    size          = var.disk_size
  }

  initialization {
    hostname = var.hostname
    ip_config {
      ipv4 {
        address = var.ipv4_address
        gateway = var.ipv4_gateway
      }
    }
  }

  memory {
    dedicated = var.memory_dedicated
    swap      = var.memory_swap
  }

  network_interface {
    bridge      = var.bridge
    enabled     = true
    firewall    = false
    mac_address = var.mac_address
    mtu         = 0
    name        = "eth0"
    rate_limit  = 0
    vlan_id     = 0
  }

  operating_system {
    template_file_id = var.template_file_id
    type             = var.os_type
  }

 lifecycle {
  prevent_destroy = true
  ignore_changes = [
    disk,
    operating_system[0].template_file_id,
    operating_system[0].type,
  ]
}
}
