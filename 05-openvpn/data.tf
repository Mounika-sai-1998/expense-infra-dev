data "aws_ssm_parameter" "vpn_sg_id" {
  name = "/${var.project_name}/${var.environment}/vpn_sg_id"
}

data "aws_ssm_parameter" "public_subnet_id" {
    name = "/${var.project_name}/${var.environment}/public_subnet_id"
}

data "aws_ami" "ami_info" {
most_recent = true
<<<<<<< HEAD
owners = ["679593333241"]

filter {
name = "name"
values = ["OpenVPN Access Server Community Image-fe8020db-*"]
=======
owners = ["444663524611"]

filter {
name = "name"
values = ["OpenVPN Access Server Community Image"]
>>>>>>> 7e384a2 (expense-infra-dev)
}
filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  
}

data "aws_vpc" "default" {
    default = true
}



<<<<<<< HEAD
=======



>>>>>>> 7e384a2 (expense-infra-dev)
