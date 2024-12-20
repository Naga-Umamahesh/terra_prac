#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

echo "Welcome to the Terraform web-app!" > /var/www/html/index.html
