# do-terraform-modules

> ⚠️ Work in Progress

Terraform modules used to create/manage resources at Digital Ocean

## Available modules
 - [x] domain
 - [x] droplet
 - [x] firewall
 - [x] floating_ip
 - [x] project
 - [x] record
 - [x] ssh_key
 - [x] vpc
 
 ## How to use
 
 Create a .tf file with the required_providers block and the Digital Ocean token:
 
 ```
 terraform {
    required_providers {
      digitalocean = {
          source = "digitalocean/digitalocean"
          version = "2.6.0"
      }
    }
}

provider "digitalocean"{
   token = var.do_token
}
 ```
 
 And pass the token by terraform variable, like:   
 `variable "do_token" {}`
 
 Using the do_droplet module:
 
 ```
 module "do_droplet_app"{
    source = "./do_droplet"
    do_tags         = ["development"]
    do_image        = "ubuntu-18-04-x64"
    do_droplet_name = "example-droplet"
    do_region       = "nyc1"
    do_droplet_size = "s-1vcpu-1gb"
}

 ```
To see more about Digital Ocean provider, check https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
