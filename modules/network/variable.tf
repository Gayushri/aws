variable "create_vpc" {}
variable "cidr" {}
variable "use_ipam" {
  type        = bool
  default     = false
}
variable "default_security_group" {}
variable "default_security_group_ingress" {}

variable "default_security_group_egress" {}

