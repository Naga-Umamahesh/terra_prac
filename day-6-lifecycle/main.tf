resource "aws_s3_bucket" "name" {
  bucket = var.bucket1

  lifecycle {
    create_before_destroy = true
  }
}

#Below examples are the life cycle meta arguments

resource "aws_instance" "main" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  availability_zone = var.availability_zone

  tags = {
    Name = "My-ec2"
  }

  lifecycle {
    create_before_destroy = true
  }

  
}