resource "digitalocean_floating_ip" "foobar" {
  droplet_id = var.droplet_id
  region     = var.region
}