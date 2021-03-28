resource "digitalocean_domain" "do_domain" {
  name       = var.domain_name
  ip_address = var.droplet_ip_address
}