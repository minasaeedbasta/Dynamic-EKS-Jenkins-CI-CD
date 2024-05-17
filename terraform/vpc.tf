resource "aws_vpc" "eks_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true

  tags = {
    Name = "eks_vpc"
  }
}