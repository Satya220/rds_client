resource "aws_security_group" "security_db" {
  name        = "security-group"
  description = "Allow connection for rds "
  vpc_id      = data.aws_vpc.talent_academy.id

  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["192.168.1.0/24"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["192.168.1.0/24"]
  }

  tags = {
    Name = "Connection to 3306 open"
  }
}