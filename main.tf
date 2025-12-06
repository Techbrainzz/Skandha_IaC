#############################
### Grafana LXC container ###
#############################

module "grafana" {
  source = "./modules/lxc"

  description        = "<h2>Grafana LXC</h2>"
  node_name          = "techbrainzz"
  protection         = false
  start_on_boot      = var.auto_boot
  tags               = ["monitoring", "visualization"]

  cpu_cores          = 2
  cpu_units          = 1024

  datastore          = "local-lvm"
  disk_size          = 7

  hostname           = "grafana"
  ipv4_address       = "dhcp"

  memory_dedicated   = 512
  memory_swap        = 512

  bridge             = "vmbr0"
  mac_address        = "BC:24:11:BE:00:B7"

  template_file_id   = ""       # add your template ID later
  os_type            = "debian"
}


#############################
### myspeed LXC container ###
#############################

module "myspeed" {
  source = "./modules/lxc"

  description        = "Speed Testing Software"
  node_name          = "techbrainzz"
  protection         = false
  start_on_boot      = var.auto_boot
  tags               = ["network", "speedtest"]

  cpu_cores          = 1
  cpu_units          = 1024

  datastore          = "local-lvm"
  disk_size          = 4

  hostname           = "myspeed"
  ipv4_address       = "dhcp"

  memory_dedicated   = 1024
  memory_swap        = 512

  bridge             = "vmbr0"
  mac_address        = "BC:24:11:4F:87:F4"

  template_file_id   = ""
  os_type            = "debian"
}

#############################
### DocMost LXC container ###
#############################

module "docmost" {
  source = "./modules/lxc"

  description        = "Document Wiki"
  node_name          = "techbrainzz"
  protection         = false
  start_on_boot      = var.auto_boot
  tags               = ["Document"]

  cpu_cores          = 3
  cpu_units          = 1024

  datastore          = "local-lvm"
  disk_size          = 8

  hostname           = "docmost"
  ipv4_address       = "dhcp"

  memory_dedicated   = 4096
  memory_swap        = 512

  bridge             = "vmbr0"
  mac_address        = "BC:24:11:01:F3:68"

  template_file_id   = ""
  os_type            = "debian"
}


