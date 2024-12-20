resource "aws_db_instance" "db" {
  identifier = "web-app-db"
  engine = "mysql"
  instance_class = "db.t2.micro"
  allocated_storage = 20
  db_name = "webappdb"
  username = var.db_username
  password = var.db_password
  parameter_group_name = "default.mysql8.0"
  publicly_accessible = false
  skip_final_snapshot = true
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  db_subnet_group_name = aws_db_subnet_group.main.id
}

resource "aws_db_subnet_group" "main" {
  name = "web-db-subnet-group"
  subnet_ids = [aws_subnet.public_subnet.id]
}