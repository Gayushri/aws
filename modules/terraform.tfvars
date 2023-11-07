region = "us-east-1"

create_vpc           = true
cidr                 = "10.0.0.0/16"
security_group = true
security_group_ingress = [{
  cidr_blocks      = "0.0.0.0/0"
  ipv4_cidr_blocks = ""
  from_port        = 22
  to_port          = 22
  protocol         = "TCP"
}]

default_security_group_egress = [{
    cidr_blocks      = "0.0.0.0/0"
  ipv4_cidr_blocks = ""
   from_port        = 0
  to_port          = 0
  protocol         = "-1"
}]

private_subnets            = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnet_names        = ["pub1", "pub2", "pub3"]
private_subnet_names       = ["pri1", "pri2", "pri3"]
