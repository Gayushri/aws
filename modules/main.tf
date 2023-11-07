provider "aws" {
  region = var.region
}

module "network" {
  source                           = "./modules/network"
  create_vpc                       = var.create_vpc
   cidr                             = var.cidr
 default_security_group    = var.manage_default_security_group
  default_security_group_ingress   = var.default_security_group_ingress
  default_security_group_egress    = var.default_security_group_egress
  }


