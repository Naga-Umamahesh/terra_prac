resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.vpc1.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true
}

resource "aws_vpc" "vpc2" {
  provider   = aws.secondary
  cidr_block = "10.1.0.0/16"
}
resource "aws_subnet" "subnet2" {
  provider                = aws.secondary
  vpc_id                  = aws_vpc.vpc2.id
  cidr_block              = "10.1.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true
}