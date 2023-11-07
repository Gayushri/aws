resource "aws_vpc" "vpc" {
   cidr_block       = "var.cidr"
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


