module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "VPC"
  cidr = "10.0.0.0/16"

  azs             = ["eu-central-1a"]
  private_subnets = var.private_subnet
  public_subnets  = ["10.0.101.0/24"]

  enable_nat_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}