resource "aws_subnet" "public_subnets" {
  for_each          = { for subnet in var.public_subnets : subnet.name => subnet }
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = each.value.cidr_block

  tags = {
    Name = "${each.value.name}_subnet"
  }
}

resource "aws_subnet" "private_subnets" {
  for_each          = { for subnet in var.private_subnets : subnet.name => subnet }
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = each.value.cidr_block

  tags = {
    Name = "${each.value.name}_subnet"
  }
}