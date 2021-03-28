 variable "project_name" {
      description = "project name"
      type = string
}

variable "project_description" {
    description = "project description"
    default = "project created by Terraform"
    type = string
}

variable "purpose" {
    description = "project purpose"
    default = "Web Application"
    type = string
}

variable "environment" {
    description = "project environment"
    default = "development"
    type = string
}

variable "resources_urn" {
      description = "resources URN"
      type = list(string)
    
}