resource "aws_nat_gateway" "public_nat" {
  allocation_id = aws_eip.public_eip.id
  subnet_id     = module.public_subnet_az1.subnet_output
  # subnet_id     = module.private_subnet_az1.subnet_output

  tags = {
    Name = "Public to Internet"
  }
}