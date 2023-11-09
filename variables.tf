variable "region" {
  description = "Region to create infra"
  type        = string
  default     = ""
}
variable "s3_bucket_names" {
  description = "Name of S3 bucket for the website"
  type        = list(any)
}

variable "table_name" {
  type = string

}

variable "iam_policy_name" {
  type    = string
  default = "example-policy"
}

variable "role_name" {
  type    = string
  default = "example-role"
}

variable "acl" {
  type    = string
  default = null
}


variable "force_destroy" {
  type    = bool
  default = false
}
