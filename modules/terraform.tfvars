region = "us-east-1"
create_vpc           = true
cidr                 = "10.0.0.0/16"
default_security_group = true
default_security_group_ingress = [{
  self             = true
  cidr_blocks      = "0.0.0.0/0"
  ipv4_cidr_blocks = ""
  from_port        = 22
  to_port          = 22
  protocol         = "TCP"
}]

default_security_group_egress = [{
  self             = true
  cidr_blocks      = "0.0.0.0/0"
  ipv4_cidr_blocks = ""
   from_port        = 0
  to_port          = 0
  protocol         = "-1"
}]
