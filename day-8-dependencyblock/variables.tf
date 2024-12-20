variable "ami" {
  description = "This is ami value"
  type = string
  default = "ami-055e3d4f0bbeb5878"
}
variable "instance_type" {
  description = "This is instancetype for EC2 instance"
  type = string
  default = "t2.micro"
}
variable "key_name" {
  description = "This is the key-name"
  type = string
  default = "Mahesh"
}
variable "availability_zone" {
  description = "This is the availabability zone"
  type = string
  default = "us-west-2a"
}
variable "bucket1" {
  description = "This is the bucket"
  type = string
  default = "girl"
}
