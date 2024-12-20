variable "allocated_storage" {
  description = "The amount of storage (in GB) to allocate for the database instance"
  type = number
  default = 20 #Default to 20 GB
}

variable "db_instance" {
  description = "The compute and memory capacity of the RDS instance. For example, 'db t2.micro"
  type = string
  default = "db.t2.micro"
}

variable "engine" {
  description = "The database engine to use. For Example: My sql"
  type = string
  default = "mysql"
}

variable "username" {
  description = "The master username for the database"
  type = string
  default = "admin" #Example default username
}

variable "password" {
  description = "The master password for the database. Avoid hardcoding this directly; use secure methods."
  type = string
  sensitive = true
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the RDS instance."
  type = list(string)
  default = [ ]
}

variable "environment" {
  description = "The name of the environment (e.g., 'staging' or 'production'). Used for tagging and resource naming."
  type = string
  default = "staging"
}

variable "provider_name" {
  description = "This is the provider name"
  type = string
  default = "us-west-2"
}

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