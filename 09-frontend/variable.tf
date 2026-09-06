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
        Component = "frontend"
    }
}

variable "zone_name" {
    default = "lokesh.shop"
}


# created as part pf jenkins CD
variable "app_version" {
    
}