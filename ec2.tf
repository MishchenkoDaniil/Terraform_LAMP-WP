resource "aws_instance" "awsinctances" {

  ami           = "ami-042ad9eec03638628"
  instance_type = var.my_intance_type
  subnet_id = module.vpc.public_subnets.0
  user_data = file("bash.sh")
  tags = var.instance_tags
  key_name = "Lab2"
  security_groups = [aws_security_group.my_webserver.id]


}