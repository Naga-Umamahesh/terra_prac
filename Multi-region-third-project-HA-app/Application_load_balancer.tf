resource "aws_lb" "web_alb" {
  name = "web-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.security_group.id]
  subnets = [aws_subnet.subnet1,aws_subnet.subnet2]
}

resource "aws_lb_target_group" "web_target_group" {
  name = "web-taarget-group"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.vpc1.id
}