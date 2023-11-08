resource "aws_s3_object" "demo-buc" {
 count = 2
  bucket        = var.bucket
  key           = var.key
  force_destroy = var.force_destroy
  acl           = var.acl
  storage_class = try(upper(var.storage_class), var.storage_class)
  source         = var.file_source
  content        = var.content
  content_base64 = var.content_base64
  etag           = var.etag
  cache_control       = var.cache_control
  content_disposition = var.content_disposition
  content_encoding    = var.content_encoding
  content_language    = var.content_language
  content_type        = var.content_type
  website_redirect    = var.website_redirect
  metadata            = var.metadata
  server_side_encryption = var.server_side_encryption
  kms_key_id             = var.kms_key_id
  bucket_key_enabled     = var.bucket_key_enabled
  tags = var.tags
}
