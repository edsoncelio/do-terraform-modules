# do-terraform-modules
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
 
To see more about Digital Ocean provider, check https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
