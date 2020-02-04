resource "aws_subnet" "public_subnet_az1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr[0]
  availability_zone = var.az[0]

  tags = {
    Name = "Public AZ1"
  }
}

resource "aws_subnet" "public_subnet_az2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr[1]
  availability_zone = var.az[1]

  tags = {
    Name = "Public AZ2"
  }
}

resource "aws_subnet" "public_subnet_az3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr[2]
  availability_zone = var.az[2]

  tags = {
    Name = "Public AZ3"
  }
}