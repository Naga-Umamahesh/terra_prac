variable "ami" {
  description = "This is ami value"
  type = string
  default = "ami-055e3d4f0bbeb5878"
}

variable "instance_type" {
  description = "This is instancetype"
  type = string
  default = "t2.micro"
}

variable "key_name" {
  description = "This is instance key value"
  type = string
  default = "Mahesh"
}

variable "availability_aone" {
  description = "This is availability zone"
  type = string
  default = "us-west-2a"
}