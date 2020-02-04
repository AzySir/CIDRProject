resource "aws_subnet" "data_subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.data_cidr[0]

  tags = {
    Name = "Data AZ1"
  }
}

resource "aws_subnet" "data_subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.data_cidr[1]

  tags = {
    Name = "Data AZ2"
  }
}

resource "aws_subnet" "data_subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.data_cidr[2]

  tags = {
    Name = "Data AZ3"
  }
}