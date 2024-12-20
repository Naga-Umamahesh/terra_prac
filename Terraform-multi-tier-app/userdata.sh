#!/bin/bash
yum update -y
yum install -y httpd
yum install start httpd
yum install enable httpd
echo "Welcome to the scalable web application!" > /var/www/html/index.html
