variable "description" { 
    type = string 
}

variable "node_name" { 
    type = string 
}

variable "protection" { 
    type = bool
    default = false 
}

variable "start_on_boot" {
    type = bool
    default = true 
}

variable "unprivileged" { 
    type = bool
    default = true 
}

variable "tags" { 
    type = list(string)
    default = [] 
}

variable "cpu_cores" { 
    type = number 
}

variable "cpu_units" { 
    type = number 
    default = 1024 
}

variable "datastore" { 
    type = string 
}

variable "disk_size" { 
    type = number 
}

variable "hostname" { 
    type = string 
}

variable "ipv4_address" { 
    type = string 
    default = "dhcp" 
}

variable "ipv4_gateway" { 
    type = string 
    default = null 
}

variable "memory_dedicated" { 
    type = number 
}

variable "memory_swap" { 
    type = number 
    default = 512 
}

variable "bridge" { 
    type = string 
}

variable "mac_address" { 
    type = string 
}

variable "template_file_id" { 
    type = string 
    }

variable "os_type" { 
    type = string 
    default = "debian" 
    }

