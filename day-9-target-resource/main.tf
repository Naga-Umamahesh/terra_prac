# resource "aws_instance" "dependent" {
#   ami = "ami-055e3d4f0bbeb5878"
#   instance_type = "t2.micro"
#   key_name = "Mahesh"

# }

resource "aws_s3_bucket" "dependent" {
  bucket = "umamahesh"
}
