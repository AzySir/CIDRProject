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

resource "aws_eip" "one" {
  vpc                       = true
  associate_with_private_ip = "10.0.0.10"
}
