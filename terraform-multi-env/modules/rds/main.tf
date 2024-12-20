resource "aws_db_instance" "rds_main" {
  allocated_storage = var.allocated_storage
  instance_class = var.db_instance
  engine = var.engine
  username = var.username
  password = var.password
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "${var.environment}-rds-instance"
  }
}


