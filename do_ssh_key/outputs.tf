output "ssh_key_fingerprint" {
  value = digitalocean_ssh_key.do_ssh_key.fingerprint
}