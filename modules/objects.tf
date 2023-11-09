resource "aws_s3_object" "test" {
  for_each = fileset("./documents/", "**/*.*")
  bucket = var.s3_bucket_names[0]
  key = each.value
  source = "./documents/${each.value}"
  content_type = each.value
}
