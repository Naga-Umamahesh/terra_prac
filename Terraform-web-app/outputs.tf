output "web_app_ip" {
  value = aws_eip_association.web_eip_ass.public_ip
}