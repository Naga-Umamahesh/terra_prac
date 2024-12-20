variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI id for EC2 instances"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "keyname for instance"
  type = string
  default = "Mahesh"
}