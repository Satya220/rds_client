resource "aws_db_subnet_group" "Database_subnet_group" {
  name       = "Db_subnet"
  subnet_ids = [data.aws_subnet.private.id, data.aws_subnet.data.id]

  tags = {
    Name = "Db subnet groups"
  }
}

resource "aws_db_instance" "db_instance" {
  allocated_storage    = 20
  engine               = "MYSQL"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = "stuff_db"
  username             = "zolo"
  password             = "Movie@225"
  skip_final_snapshot  = true
  backup_retention_period = 1
  multi_AZ = true
}

