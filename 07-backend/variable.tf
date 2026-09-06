variable "project_name" {
    type = string
    default = "expense"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "common_tags" {
    type = map
    default =   {
        Project_name = "expense"
        Environment = "dev"
        Terraform = true
        Component = "backend"
    }
}

variable "zone_name" {
    default = "lokesh.shop"
}

variable "app_version" {
  description = "Application version"
  type        = string
}