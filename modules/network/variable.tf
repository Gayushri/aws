variable "create_vpc" {}
variable "cidr" {}
variable "use_ipam_pool" {
  type        = bool
  default     = false
}
variable "default_security_group" {}
variable "default_security_group_ingress" {}

variable "default_security_group_egress" {}
variable "create_igw" {
    type        = bool
  default     = true
}
