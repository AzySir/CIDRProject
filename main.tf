resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/19"

  tags = {
    Name = var.projecttag
  }
}

# -------------- Public ---------------------

output "main_vpc" {
  value = aws_vpc.main.id
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/19"

  tags = {
    Name = var.projecttag
  }
}

output "main_vpc" {
  value = aws_vpc.main.id
}

resource "aws_subnet" "public_subnet_az1" {
  vpc_id     = main_vpc.main.idvalue
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


# --------------- Private -----------------------
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

# ----------------- Data ---------------------
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