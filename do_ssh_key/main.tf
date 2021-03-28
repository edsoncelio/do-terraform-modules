resource "digitalocean_ssh_key" "do_ssh_key" {
  name       = var.ssh_key_name
  public_key = file(var.ssh_key_path)
}