resource "aws_security_group" "mysql_server" {
  name        = "mysql_server"
  description = "Allow connection to MySQL RDS Server "
  vpc_id      = data.aws_vpc.talent_academy.id

  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [data.aws_security_group.ec2_server.id]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["192.168.1.0/24"]
  }

  tags = {
    Name = "mysql-server-sg"
  }
}