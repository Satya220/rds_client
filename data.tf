data "aws_vpc" "database_vpc" {
    filter {
    name   = "tag:Name"
    values = ["lab_vpc"]
  }
}
data "aws_subnet" "private" {
    filter {
    name   = "tag:Name"
    values = ["private subnet"]
  }
}
data "aws_subnet" "data" {
    filter {
    name   = "tag:Name"
    values = ["data subnet"]
  }
}