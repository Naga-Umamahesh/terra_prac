resource "aws_instance" "web_server" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.subnet1.id
  security_groups = ["web_sg"]
  tags = {
    Name = "webserver1"
  }
}

#Creating security Group
resource "aws_security_group" "security_group" {
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

resource "aws_launch_configuration" "web_config"{
  name = "web-config"
  image_id = "ami-055e3d4f0bbeb5878"
  instance_type = "t2.micro"

  lifecycle{
    create_before_destroy = true 
  }

}


resource "aws_autoscaling_group" "asg" {
  desired_capacity     = 2
  max_size             = 5
  min_size             = 1
  vpc_zone_identifier  = [aws_subnet.subnet1.id]
  launch_configuration = aws_launch_configuration.web_config.id
}