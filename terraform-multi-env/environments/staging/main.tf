provider "aws" {
  region = var.provider_name
}

module "rds" {
  source                 = "../../modules/rds"
  allocated_storage      = var.allocated_storage
#   db_instance_class      = var.db_instance_class
  engine                 = var.engine
  username               = var.username
  password               = var.password
  vpc_security_group_ids = var.vpc_security_group_ids
  environment            = var.environment
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  environment   = var.environment
}
