resource "aws_instance" "main" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  user_data = file("script.sh")

  tags = {
    Name = "dev1"
  }
}