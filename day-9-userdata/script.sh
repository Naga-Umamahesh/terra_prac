#!/bin/bash
sudo yum install -y
sudo yum install -y httpd
sudo service httpd start
sudo systemctl enable httpd
echo "<h1>Welcome to Naresh IT ! AWS infra created using terraform in us-west-2 Region</h1>" > /var/www/html/index.html