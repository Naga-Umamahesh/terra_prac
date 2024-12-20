resource "aws_vpc" "this" {
 cidr_block = var.cidr_block
 tags = {
   Name = "${var.environment}-vpc"
 }
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.this.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.environment}-public-subnet"
  }
}

resource "aws_security_group" "default" {
  vpc_id = aws_vpc.this.id
  tags = {
    Name = "${var.environment}-default-sg"
  }
}
