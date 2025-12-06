#############################
### myspeed LXC container ###
#############################

resource "proxmox_virtual_environment_container" "myspeed" {
  description         = "Speed Testing Software"
  vm_id     = 112
  hook_script_file_id = null
  node_name           = "techbrainzz"
  protection          = false
  start_on_boot       = var.auto_boot
  started             = true
  tags                = values(local.common_tags)
  template            = false
  timeout_clone       = null
  timeout_create      = null
  timeout_delete      = null
  timeout_update      = null
  unprivileged        = true
  console {
    enabled   = true
    tty_count = 2
    type      = "tty"
  }
  disk {
    acl           = false
    datastore_id  = "local-lvm"
    mount_options = []
    quota         = false
    replicate     = false
    size          = 4
  }
  initialization {
    hostname = "myspeed"
    ip_config {
      ipv4 {
        address = "dhcp"
        gateway = null
      }
    }
  }
  memory {
    dedicated = 1024
    swap      = 512
  }
  network_interface {
    bridge      = "vmbr0"
    enabled     = true
    firewall    = false
    mac_address = "BC:24:11:4F:87:F4"
    mtu         = 0
    name        = "eth0"
    rate_limit  = 0
    vlan_id     = 0
  }
  operating_system {
    template_file_id = ""
    type             = "debian"
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
