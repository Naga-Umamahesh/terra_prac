#Create instance
resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    Name = "dev2"
  }
}


# resource "aws_s3_bucket" "bucket1" {
#   bucket = var.bucket1
#   lifecycle {
#     prevent_destroy = true
#   }
# }

# resource "aws_s3_bucket" "bucket2" {
#   bucket = var.bucket2
# }
