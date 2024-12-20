resource "aws_route53_zone" "main" {
  name = "maheshtechhosting.co.in" #place the domain name here
}

resource "aws_route53_record" "webapp" {
  zone_id = aws_route53_zone.main.id
  name = "www"
  type = "A"
  ttl = "300"
  records = []
}

