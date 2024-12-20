# RDS Variables
allocated_storage      = 20
# db_instance_class      = "db.t2.micro"
engine                 = "mysql"
username               = "staging_user"
password               = "staging_password123"
vpc_security_group_ids = []

# EC2 Variables
ami_id       = "ami-055e3d4f0bbeb5878"
instance_type = "t2.micro"
subnet_id     = "subnet-1234abcd"

# Environment
environment = "staging"