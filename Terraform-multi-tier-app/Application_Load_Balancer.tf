resource "aws_lb" "web_alb" {
  name = "web-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.web_sg.id]
  subnets = [aws_subnet.public_subnet.id]

  enable_deletion_protection = false
  enable_http2 = true
}

resource "aws_lb_target_group" "web_target_group" {
  name = "web-target-group"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.main_vpc.id
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.web_alb.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "fixed-response"
    fixed_response {
      status_code = 200
      content_type = "text/html"
      message_body = "Welcome to the load balanced web app!"
    }
  }
}