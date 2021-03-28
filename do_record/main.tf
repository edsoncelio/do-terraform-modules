resource "digitalocean_record" "domain_record" {
  domain = var.domain_name
  type   = var.record_type
  name   = var.record_name
  value  = var.record_value
}