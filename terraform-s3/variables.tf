# variable "aws_s3_bucket" {
#   description = "The name of the s3 bucket"
#   type = string
#   default = "buck-123"
# }

variable "bucket_name" {
  description = "The name of the s3 bucket"
  type = string
  default = "my-unique-bucket-name-2024"
}
variable "provider_name" {
  description = "provider-name"
  type = string
  default = "us-west-2"
}