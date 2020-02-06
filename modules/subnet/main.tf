resource "aws_subnet" "subnetmodule" {
  vpc_id = var.vpc_id
  cidr_block = var.cidr
  availability_zone = var.availability_zone
  tags = {
    Name = var.subnet_name
  }
}

output "subnet_output" {
  value       = aws_subnet.subnetmodule.id
  description = "Subnet"
}