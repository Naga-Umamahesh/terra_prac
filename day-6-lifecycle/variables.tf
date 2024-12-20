variable "ami" {
  description = "This is ami value"
  type = string
  default = ""
}
variable "instance_type" {
  description = "This is instance type for ec2 instance"
  type = string
  default = "t2.micro"
}
variable "key_name" {
  description = "This is the keyname"
  type = string
  default = "Mahesh"
}
variable "availability_zone" {
  description = "This is the availability zone"
  type = string
  default = "us-west-2a"
}

variable "bucket1" {
  description = "This is the bucket"
  type = string
  default = "nareshdevops"
}