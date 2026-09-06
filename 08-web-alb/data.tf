data "aws_ssm_parameter" "web_alb_sg_id" {
  name = "/${var.project_name}/${var.environment}/web_alb_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
<<<<<<< HEAD
    name = "/${var.project_name}/${var.environment}/public_subnet_ids"
=======
    name = "/${var.project_name}/${var.environment}/public_subnet_id"
>>>>>>> 7e384a2 (expense-infra-dev)
}

data "aws_ssm_parameter" "acm_certificate_arn" {
  name = "/${var.project_name}/${var.environment}/acm_certificate_arn"
}
