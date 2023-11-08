region = "us-east-1"

name = "vpc-dev"
cidr                 = "10.0.0.0/16"
azs                 = ["us-east-1a", "us-east-1b"]
private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets      = ["10.0.101.0/24", "10.0.102.0/24"]
enable_dns_hostnames = true
enable_dns_support   = true
enable_nat_gateway = true
single_nat_gateway = true



security_group = true
security_group_ingress = [{
  cidr_blocks      = "0.0.0.0/0"
  ipv4_cidr_blocks = ""
  from_port        = 22
  to_port          = 22
  protocol         = "TCP"
}]

security_group_egress = [{
    cidr_blocks      = "0.0.0.0/0"
  ipv4_cidr_blocks = ""
   from_port        = 0
  to_port          = 0
  protocol         = "-1"
}]


