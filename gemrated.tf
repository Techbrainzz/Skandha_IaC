# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "techbrainzz/102"
resource "proxmox_virtual_environment_container" "docmost" {
  description         = "<div align='center'>\n  <a href='https://Helper-Scripts.com' target='_blank' rel='noopener noreferrer'>\n    <img src='https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/misc/images/logo-81x112.png' alt='Logo' style='width:81px;height:112px;'/>\n  </a>\n\n  <h2 style='font-size: 24px; margin: 20px 0;'>Docmost LXC</h2>\n\n  <p style='margin: 16px 0;'>\n    <a href='https://ko-fi.com/community_scripts' target='_blank' rel='noopener noreferrer'>\n      <img src='https://img.shields.io/badge/&#x2615;-Buy us a coffee-blue' alt='spend Coffee' />\n    </a>\n  </p>\n\n  <span style='margin: 0 10px;'>\n    <i class=\"fa fa-github fa-fw\" style=\"color: #f5f5f5;\"></i>\n    <a href='https://github.com/community-scripts/ProxmoxVE' target='_blank' rel='noopener noreferrer' style='text-decoration: none; color: #00617f;'>GitHub</a>\n  </span>\n  <span style='margin: 0 10px;'>\n    <i class=\"fa fa-comments fa-fw\" style=\"color: #f5f5f5;\"></i>\n    <a href='https://github.com/community-scripts/ProxmoxVE/discussions' target='_blank' rel='noopener noreferrer' style='text-decoration: none; color: #00617f;'>Discussions</a>\n  </span>\n  <span style='margin: 0 10px;'>\n    <i class=\"fa fa-exclamation-circle fa-fw\" style=\"color: #f5f5f5;\"></i>\n    <a href='https://github.com/community-scripts/ProxmoxVE/issues' target='_blank' rel='noopener noreferrer' style='text-decoration: none; color: #00617f;'>Issues</a>\n  </span>\n</div>\n"
  hook_script_file_id = null
  node_name           = "techbrainzz"
  protection          = false
  start_on_boot       = null
  started             = true
  tags                = ["documents"]
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
  cpu {
    architecture = "amd64"
    cores        = 3
    units        = 1024
  }
  disk {
    acl           = false
    datastore_id  = "local-lvm"
    mount_options = []
    quota         = false
    replicate     = false
    size          = 8
  }
  initialization {
    hostname = "docmost"
    ip_config {
      ipv4 {
        address = "dhcp"
        gateway = null
      }
    }
  }
  memory {
    dedicated = 4096
    swap      = 512
  }
  network_interface {
    bridge      = "vmbr0"
    enabled     = true
    firewall    = false
    mac_address = "BC:24:11:01:F3:68"
    mtu         = 0
    name        = "eth0"
    rate_limit  = 0
    vlan_id     = 0
  }
  operating_system {
    template_file_id = ""
    type             = "debian"
  }
}
