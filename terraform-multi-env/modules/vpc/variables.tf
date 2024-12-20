variable "cidr_block" {
  description = "This is cidr_block"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet within the VPC. For Example, '10.0.1.0/24'."
  type = string
  default = "10.0.1.0/24" #Default to single subnet
}

variable "environment" {
  description = "The name of the environment (e.g., 'staging' or 'production')."
  type = string
  default = "staging" #Default to staging
}