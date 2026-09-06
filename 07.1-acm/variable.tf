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
        component = "app-alb"
    }
}

variable "zone_name" {
<<<<<<< HEAD
    default = mounikasai.shop
=======
    default = "lokesh.shop"
>>>>>>> 7e384a2 (expense-infra-dev)
  
}

variable "zone_id" {
<<<<<<< HEAD
    default = "Z0454740LB23LQLQ9P2Q"
=======
    default = "Z1034417243AKAEGMKSYJ"
>>>>>>> 7e384a2 (expense-infra-dev)
  
}
