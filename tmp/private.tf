resource "aws_subnet" "private_subnet_az1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr[0]

  tags = {
    Name = "Private AZ1"
  }
}
resource "aws_subnet" "private_subnet_az2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr[0]

  tags = {
    Name = "Private AZ2"
  }
}
resource "aws_subnet" "private_subnet_az3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr[0]

  tags = {
    Name = "Private AZ3"
  }
}