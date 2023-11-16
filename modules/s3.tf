resource "aws_s3_bucket" "joger143" {
  count         = length(var.s3_bucket_names)
  bucket        = var.s3_bucket_names[count.index]
  force_destroy = var.force_destroy
  acl           = var.acl
}


resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = var.s3_bucket_names[0]
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_iam_role" "example" {
  name = "example"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "example" {
  name        = "example"
  description = "Example policy"
  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Action = ["s3:ListBucket"]
        Effect = "Allow"
        "Action" : [
          "s3:PutObject",
          "s3:GetObject",
          "s3:ListBucket",
          "s3:DeleteObject"
        ],
        "Resource" : [
          "arn:aws:s3:::*/*",
          "arn:aws:s3:::var.s3_bucket_names[0]"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "some_bucket_policy" {
  role       = aws_iam_role.example.name
  policy_arn = aws_iam_policy.example.arn
}
