# resource "aws_s3_bucket" "bucket" {
#   bucket = var.bucket_name
# }

# resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
#   name = "terraform-state-lock-dynamo"
#   hash_key = "LockID"
#   read_capacity = 20
#   write_capacity = 20

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}