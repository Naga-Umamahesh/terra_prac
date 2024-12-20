variable "instance_type" {
  description = "EC2 Instance type"
  type = string
  default = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Machine AMI Id"
  type = string
  default = "ami-055e3d4f0bbeb5878"
}

variable "key_name" {
  description = "This is the key name"
  type = string
  default = "Mahesh"
}