variable "ami" {
  description = "Passing ami value"
  type = string
  default = "ami-055e3d4f0bbeb5878"
}

variable "instance_type" {
  description = "This is Instance type EC2"
  type = string
  default = "t2.micro"
}

variable "key_name" {
  description = "This is key-name for the instance"
  type = string
  default = "Mahesh"
}