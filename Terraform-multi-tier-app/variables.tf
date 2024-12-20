variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "ami_id" {
  description = "Amazom Machine Image Id"
  type = string
  default = ""
}

variable "db_username" {
  description = "Database username"
  type = string
  default = "admin"
}

variable "db_password" {
  description = "Database password"
  type = string
  default = "password1234"
}

