resource "aws_instance" "web_server" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "Terraformwebapp"
  }
}

resource "aws_security_group" "web_sg" {
  name = "web-sg"
  description = "Allow http and ssh access"

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

resource "aws_eip" "web_ip" {
  domain = "vpc"
}

resource "aws_eip_association" "web_eip_ass" {
  instance_id = aws_instance.web_server.id
  allocation_id = aws_eip.web_ip.id
}