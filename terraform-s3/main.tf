# resource "aws_s3_bucket" "my_bucket" {
#   bucket = "${var.aws_s3_bucket}-${random_string.bucket_id.result}"
#   acl = "private"
# }

# resource "random_string" "bucket_id" {
#   length  = 2
#   special = false
#   upper   = false
#   #depends_on = [ aws_s3_bucket.my_bucket ]
# }

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
}


