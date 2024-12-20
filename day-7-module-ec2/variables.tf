variable "ami" {
  description = "This is ami value"
  type = string
  default = "ami-055e3d4f0bbeb5878"
}
variable "instance_type" {
  description = "This is instance type for ec2 instance"
  type = string
  default = "t2.micro"
}
variable "key_name" {
  description = "This is the key name for ec2 instance"
  type = string
  default = "Mahesh"
}
variable "availability_zone" {
  description = "This is availability zone for instance"
  type = string
  default = "us-west-2a"
}
variable "provider_name" {
    description = "This is the provider name"
    type = string
    default = "us-west-2"
}
