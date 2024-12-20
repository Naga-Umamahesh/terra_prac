#Creating VPC
resource "aws_vpc" "main_vpc" {
  cidr_block = "10.0.0.0/16"
}

#Creating public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true
}

#Creating security group
resource "aws_security_group" "web_sg" {
  name = "web_sg"
  description = "Allow HTTP and SSh access"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.web_sg.name]
  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "webserver"
  }
}

