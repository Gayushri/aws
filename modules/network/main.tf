locals {
  max_subnet_length = max(
    length(var.private_subnets)

resource "aws_vpc" "vpc" {
count = local.create_vpc ? 1 : 0
cidr_block       = "var.vpc_cidr"
azs = 
 }

resource "aws_security_group" "security_group" {
  count = local.create_vpc && var.security_group ? 1 : 0
  vpc_id = aws_vpc.vpc[0].id

  dynamic "ingress" {
    for_each = var.security_group_ingress
    content {
     self = ingress.value
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = tcp   
      cidr_blocks = ["0.0.0.0/0']
    }
  }

  dynamic "egress" {
    for_each = var.security_group
    content {
     
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = tcp
    }
  }
resource "aws_subnet" "public" {
count      = length(var.private_subnet_cidrs)
vpc_id       = var.vpc_id
cidr_block  = element(var.public_subnets_cidrs, count.index)
availability_zone = element(var.azs, count.index)
 tags = {
   Name = "public subnet ${count.index + 1}"
 }
}

resource "aws_subnet" "private" {
count      = length(var.private_subnet_cidrs)
vpc_id       = var.vpc_id
cidr_block  = element(var.private_subnets_cidrs, count.index)
 availability_zone = element(var.azs, count.index)
 tags = {
   Name = "private subnet ${count.index + 1}"
 }
}

resource "aws_internet_gateway" "gw" {
 vpc_id = aws_vpc.id
 
 tags = {
   Name = "Project VPC IG"
 }
}


region = var.region
}

