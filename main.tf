resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/19"

  tags = {
    Name = var.projecttag
  }
}

# -------------- Public ---------------------

module "public_subnet_az1" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.public_cidr[0]
  availability_zone = var.az[0]
  subnet_name       = "Public AZ1"
}

module "public_subnet_az2" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.public_cidr[1]
  availability_zone = var.az[1]
  subnet_name       = "Public AZ2"
}

module "public_subnet_az3" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.public_cidr[2]
  availability_zone = var.az[2]
  subnet_name       = "Public AZ3"
}

# --------------- Private -----------------------

module "private_subnet_az1" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.private_cidr[0]
  availability_zone = var.az[0]
  subnet_name       = "Private AZ1"
}

module "private_subnet_az2" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.private_cidr[1]
  availability_zone = var.az[1]
  subnet_name       = "Private AZ2"
}

module "private_subnet_az3" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.private_cidr[2]
  availability_zone = var.az[2]
  subnet_name       = "Private AZ3"
}

# ----------------- Data ---------------------

module "data_subnet_az1" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.data_cidr[0]
  availability_zone = var.az[0]
  subnet_name       = "Data AZ1"
}

module "data_subnet_az2" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.data_cidr[1]
  availability_zone = var.az[1]
  subnet_name       = "Data AZ2"
}

module "data_subnet_az3" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.main.id
  cidr              = var.data_cidr[2]
  availability_zone = var.az[2]
  subnet_name       = "Private AZ3"
}