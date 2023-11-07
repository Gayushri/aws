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

variable "create_policy" {
  description = "Whether to create the IAM policy"
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the policy"
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "IAM policy name prefix"
  type        = string
  default     = null
}

variable "path" {
  description = "The path of the policy in IAM"
  type        = string
  default     = "/"
}

variable "description" {
  description = "The description of the policy"
  type        = string
  default     = "IAM Policy"
}

variable "policy" {
  description = "The path of the policy in IAM (tpl file)"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}
