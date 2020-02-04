resource "aws_subnet" "public_subnet_az1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr[0]
  availability_zone = var.az[0]

  tags = {
    Name = "Public AZ1"
  }
}