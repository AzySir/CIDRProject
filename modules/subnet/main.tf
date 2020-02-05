resource "aws_subnet" "subnetmodule" {
#   vpc_id     = aws_vpc.main.id
  vpc_id = var.vpc_id
  cidr_block = var.cidr
  availability_zone = var.availability_zone

  tags = {
    Name = var.subnet_name
  }
}