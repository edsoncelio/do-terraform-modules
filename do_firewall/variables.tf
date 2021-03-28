variable "do_firewall_name" {
    description = "firewall name"
    type = string
}

variable "do_droplet_id" {
  description = "list of droplet ids"
  type = list(string)
}

variable "inbound_rules" {
  type = list(object({
    protocol = string
    port_range = string
    source_addresses = list(string)
  }))
  default = [
    {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
    }
  ]
}

variable "outbound_rules" {
  type = list(object({
    protocol = string
    port_range = string
    destination_addresses = list(string)
  }))
  default = [
    {
    protocol              = "icmp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
    },
    {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
    },
    {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
    }
  ]
}

