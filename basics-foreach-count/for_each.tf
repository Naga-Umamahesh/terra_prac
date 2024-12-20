# resource "aws_instance" "main1" {
#   for_each = {
#     instance1 = "ami-055e3d4f0bbeb5878"
#     instance2 = "ami-01167b661200e49e7"
#   }
#   ami = each.value
#   instance_type = "t2.micro"
# }

# # aws ec2 describe-images --owners self
# # aws ec2 describe-images --filters "Name=name,Values=amzn-ami-*" "Name=state,Values=available"

# intermediate
resource "aws_instance" "main1" {
  for_each = var.instances
  ami = each.value.ami
  instance_type = "t2.micro"
  tags = {
    Name =each.key
  }
}

#Create a VPC
resource "aws_vpc" "VPC" {
  cidr_block = "10.0.0.0/16"
}

#Subnets
resource "aws_subnet" "subnet1" {
  count = length(var.subnet_cidr)
  vpc_id = aws_vpc.VPC.id
  cidr_block = var.subnet_cidr[count.index]
  availability_zone = element(["us-west-2a","us-west-2b"], count.index)
}

#EC2 instance
resource "aws_instance" "main" {
  for_each = var.instances
  ami = each.value.ami
  instance_type = "t2micro"
  subnet_id = aws_subnet.subnet1[each.value.subnet_index].id

  tags = {
    Name = each.key
  }
}