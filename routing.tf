resource "aws_route_table" "routing_table" {
  vpc_id = aws_vpc.main.id

  route {
    # cidr_block = "10.0.0.0/24"
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "Main Routing Table"
  }
}

resource "aws_route_table_association" "public_to_internet" {
  subnet_id      = module.public_subnet_az1.subnet_output
  route_table_id = aws_route_table.routing_table.id
}

resource "aws_route_table_association" "private_to_nat_az1" {
  subnet_id      = module.private_subnet_az1.subnet_output
  route_table_id = aws_route_table.routing_table.id
}

# gateway_id = aws_nat_gateway.public_nat.id

resource "aws_route" "r" {
  route_table_id         = aws_route_table.routing_table.id
  destination_cidr_block = "0.0.0.0/16"
  nat_gateway_id         = aws_nat_gateway.public_nat.id
  # vpc_peering_connection_id = "pcx-45ff3dc1"
  # depends_on                = ["aws_route_table.testing"]
}