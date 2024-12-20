variable "ami_id" {
  description = "The AMI ID of the EC2 instance to be launched"
  type = string
  default = "ami-055e3d4f0bbeb5878"
}

variable "instance_type" {
  description = "The type of ec2 instance to be launch"
  type = string
  default = "t2.micro"
}

variable "subnet_id" {
  description = "The subnet ID where EC2 instance will be launched"
  type = string
}

variable "environment" {
  description = "The name of the environment (e.g., staging or production)"
  type = string
  default = "staging"
}