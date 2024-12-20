#primary bucket
resource "aws_s3_bucket" "primary_bucket" {
  bucket = "my-webapp-bucket-primary"

  tags = {
    Environment = "Dev"
    Name        = "primary-bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "primary_bucket_block" {
  bucket = aws_s3_bucket.primary_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "secondary_bucket" {
  provider = aws.secondary
  bucket   = "my-webapp-bucket-secondary"

  tags = {
    Environment = "Dev"
    Name        = "Secondary-bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "secondary_bucket_block" {
  provider = aws.secondary
  bucket   = aws_s3_bucket.secondary_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_object" "object1" {
  bucket = aws_s3_bucket.primary_bucket.id
  key    = "index.html"
  source = "index.html"
}

resource "aws_s3_object" "object2" {
  provider = aws.secondary
  bucket   = aws_s3_bucket.secondary_bucket.id
  key      = "index.html"
  source   = "index.html"
}