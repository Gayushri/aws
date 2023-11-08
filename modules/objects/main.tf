resource "aws_s3_bucket" "demo_bucket" {
  for_each = toset(var.bucket_list)
  bucket = each.key
}
