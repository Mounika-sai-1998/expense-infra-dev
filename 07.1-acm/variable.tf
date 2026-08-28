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
    default = mounikasai.shop
  
}

variable "zone_id" {
    default = "Z0454740LB23LQLQ9P2Q"
  
}
