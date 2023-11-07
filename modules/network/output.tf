output "vpc_id" {
  description = "The ID of the VPC"
  value       = try(aws_vpc.vpc[0].id, null)
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = try(aws_vpc.vpc[0].cidr_block, null)
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = try(aws_vpc.vpc[0].default_security_group_id, null)
}
