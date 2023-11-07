variable "region" {
  type        = string
  default     = ""
}

variable "create_vpc" {
   type        = bool
  default     = true
}

variable "cidr" {
 type        = string
  default     = "0.0.0.0/0"
}

variable "default_security_group" {
    type        = bool
  default     = false
}

variable "default_security_group_ingress" {
   type        = list(map(string))
  default = [{
    "key" = "value"
  }]
}

variable "default_security_group_egress" {
   type        = list(map(string))
  default     = []
}

variable "public_subnets" {
    type        = list(string)
  default     = []
}

variable "private_subnets" {
   type        = list(string)
  default     = []
}

variable "public_subnet_names" {
    type        = list(string)
  default     = []
}

variable "private_subnet_names" {
   type        = list(string)
  default     = []
}

variable "s3_bucket_names" {
   type        = list
  default     = ["dev-bucket, uat-bucket, preprod-bucket"]
}

