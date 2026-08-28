resource "aws_key_pair" "vpn" {
  key_name   = "openvpn"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDWfksH93Jny9BbZ8PivhRzmWqIVsmMpyqmoO6ZaQ49X USER@DESKTOP-E06LQK2"
}
module "vpn" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  key_name = aws_key_pair.vpn.key_name
  name = "${var.project_name}-${var.environment}-vpn" 
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.vpn_sg_id.value]
  subnet_id     = local.public_subnet_id
  ami          =  data.aws_ami.ami_info.id
  #user_data = file("bastion.sh")

  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}-vpn" 
    }
  )
}