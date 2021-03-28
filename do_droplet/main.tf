resource "digitalocean_droplet" "do_droplet" {
    image = var.do_image
    name = var.do_droplet_name
    region = var.do_region
    size = var.do_droplet_size
    tags = var.do_tags
    vpc_uuid = var.vpc_id
    ssh_keys = var.do_ssh_keys
}
