# resource "aws_instance" "main" {
#   for_each = var.instances
#   ami = each.value.ami
#   instance_type = each.value.type

#   tags = {
#     Name = each.key
#   }
# }

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

output "ami_id" {
  value = data.aws_ami.amazon_linux.id
}
