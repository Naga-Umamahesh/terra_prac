resource "aws_instance" "main" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  availability_zone = var.availability_zone

  tags = {
    Name = "myec22"
  }
}

resource "aws_s3_bucket" "buckett" {
  bucket = var.bucket1
  depends_on = [ aws_instance.main ]
}