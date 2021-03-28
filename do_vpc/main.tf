resource "digitalocean_vpc" "do_vpc" {
  name   = var.vpc_name
  region = var.region
}
