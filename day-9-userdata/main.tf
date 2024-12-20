resource "aws_instance" "main" {
  ami = "ami-055e3d4f0bbeb5878"
  instance_type = "t2.micro"
  key_name = "Mahesh"

  user_data = file("script.sh")

  tags = {
    Name = "dev1"
  }
}