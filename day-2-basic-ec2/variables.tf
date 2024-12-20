# variable "provider_name" {
#   description = "provider block"
#   type        = string
#   default     = "us-west-2"
# }

variable "ami" {
  description = "This is ami value for instance"
  type        = string
  default     = "ami-055e3d4f0bbeb5878"
}

variable "instance_type" {
  description = "This is instance type for ec2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "This is key-name for instance"
  type        = string
  default     = "Mahesh"
}

# variable "bucket1" {
#   description = "This is the bucket1 for s3"
#   type        = string
#   default     = "nareshdevops"
# }

# variable "bucket2" {
#   description = "This is the bucket2 for s3"
#   type        = string
#   default     = "multiclouddevops"
# }