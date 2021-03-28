output "id" {
  value = digitalocean_droplet.do_droplet.id
  description = "id"
}

output "urn" {
  value = digitalocean_droplet.do_droplet.urn
}

output "ipv4_addr" {
  value = digitalocean_droplet.do_droplet.ipv4_address
}