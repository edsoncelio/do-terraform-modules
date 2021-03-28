variable "do_tags" {
  description = "Tag list to be applied"
  type = list(string)
  default = ["terraform"]
}

variable "do_image"{
  description = "do image"
  type = string
}

variable "do_droplet_name" {
  description = "do droplet name"
  type = string
}
variable "do_region" {
  description = "do region"
  type = string
}

variable "do_droplet_size" {
  description = "do droplet size"
  type = string
}
variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "do_ssh_keys" {
  description = "ssh keys fingerprint"
  type = list(string)
}