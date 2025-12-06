##############################
### Proxmox VE Credentials ###
##############################

variable "username" {
    description = "Proxmox VE username"
    type        = string
}

variable "password" {
  description = "Proxmox VE password"
  type        = string  
}

#########################
### LXC Configuration ###
#########################

variable "auto_boot" {
  description = "Start on boot Config"
  type = bool
  default = true
}