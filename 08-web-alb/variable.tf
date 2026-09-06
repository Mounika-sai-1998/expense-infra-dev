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
        component = "web-alb"
    }
}

variable "zone_name" {
<<<<<<< HEAD
    default = mounikasai.shop
=======
    default = "lokesh.shop"
>>>>>>> 7e384a2 (expense-infra-dev)
  
}
