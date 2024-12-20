# variable "instances" {
#     default = {
#         instance1 = "ami-055e3d4f0bbeb5878"
#         instance2 = "ami-055e3d4f0bbeb5878"
#         instance3 = "ami-055e3d4f0bbeb5878"
#     }
# }

variable "subnet_cidr" {
  default = ["10.0.1.0/24" , "10.0.2.0/24"]
}

variable "instances" {
  default = {
    instance1 = {ami = "ami-055e3d4f0bbeb5878", subnet_index = 0}
    instance2 = {ami = "ami-055e3d4f0bbeb5878", subnet_index = 1}
  }
}