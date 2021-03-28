resource "digitalocean_project" "do_project" {
  name        = var.project_name
  description = var.project_description
  purpose     = var.purpose
  environment = var.environment
  resources = var.resources_urn
}