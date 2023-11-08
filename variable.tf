variable "region" {
  description = "Region to create infra"
  type        = string
  default     = ""
}
variable "s3_bucket_names" {
  description = "Name of S3 bucket for the website"
  type        = list
  default     = ["devminee", "prodminee"]
}

variable "instance_profile_name" {
  type    = string
  default = "example-instance-profile"
}

variable "iam_policy_name" {
  type    = string
  default = "example-policy"
}

variable "role_name" {
  type    = string
  default = "example-role"
}


