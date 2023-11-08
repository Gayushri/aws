resource "aws_s3_bucket" "demo_bucket" {
  for_each = toset(var.bucket_list)
bucket = var.bucket_name
key = var.key
force_destroy = var.force_destroy
acl = var.acl
storage_class = var.storage_class
source = var.file_source
content = var.content
content_base64 = var.content_base64
tags = var.tags
