resource "aws_s3_bucket" "app_bucket" {
  bucket = var.bucket["name"]

  tags = {
    App      = "AvocadoShop"
    Provider = "AppBuddy"
  }
}

resource "aws_s3_bucket_ownership_controls" "app_bucket_ownership_controls" {
  depends_on = [aws_s3_bucket.app_bucket]
  bucket     = aws_s3_bucket.app_bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "app_bucket_public_access_block" {
  depends_on = [aws_s3_bucket.app_bucket]

  bucket = aws_s3_bucket.app_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "app_bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.app_bucket_ownership_controls, aws_s3_bucket_public_access_block.app_bucket_public_access_block]

  bucket = aws_s3_bucket.app_bucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "s3_static_website_bucket_configuration" {
  bucket = aws_s3_bucket.app_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
