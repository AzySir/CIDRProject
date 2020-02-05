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