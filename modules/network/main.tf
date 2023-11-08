resource "aws_vpc" "vpc" {
   cidr_block       = "var.vpc_cidr"
 }

resource "aws_security_group" "security_group" {
name = "security_group"
vpc_id = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = var.security_group
    content {
     
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = tcp   
      cidr_blocks = ["0.0.0.0/10']
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

resource "aws_s3_bucket" "demo_bucket" {
  for_each = toset(var.bucket_list)
bucket = each.key
key = var.key
force_destroy = var.force_destroy
acl = var.acl
storage_class = var.storage_class
source = var.file_source
content = var.content
content_base64 = var.content_base64
tag = var.tag
region = var.region
}

