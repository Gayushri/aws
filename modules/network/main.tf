resource "aws_vpc" "vpc" {
   cidr_block       = "var.use_ipam"
 }

resource "aws_default_security_group" "security_group" {
  vpc_id = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = var.default_security_group_ingress
    content {
      self             = lookup(ingress.value, "self", null)
      from_port        = lookup(ingress.value, "from_port", 0)
      to_port          = lookup(ingress.value, "to_port", 0)
      protocol         = lookup(ingress.value, "protocol", "-1")
    }
  }

  dynamic "egress" {
    for_each = var.default_security_group_egress
    content {
      self             = lookup(egress.value, "self", null)
      from_port        = lookup(egress.value, "from_port", 0)
      to_port          = lookup(egress.value, "to_port", 0)
      protocol         = lookup(egress.value, "protocol", "-1")
    }
  }


