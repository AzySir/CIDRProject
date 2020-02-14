########################## SUBNET (Route Table Associate) ##############################
#                               
################################## ROUTE TABLE #########################################

##################
# ROUTE
##################

##################
# ROUTE
##################

########################## ############################## ##############################
#
########################## ############################## ##############################



# -------------------------------------------------------------------------------------

################# Route Table Association ######################

resource "aws_route_table_association" "public_to_internet_az1" {
  subnet_id      = module.public_subnet_az1.subnet_output
  route_table_id = aws_route_table.nat_to_igw_table.id
}

resource "aws_route_table_association" "private_to_nat_az1" {
  subnet_id      = module.private_subnet_az1.subnet_output
  route_table_id = aws_route_table.private_to_nat_table.id
}

########################## Route Tables ##############################

resource "aws_route_table" "nat_to_igw_table" {
  vpc_id = aws_vpc.main.id

  # route {
  #   cidr_block = "0.0.0.0/0"
  #   gateway_id = aws_internet_gateway.main.id
  # }

  tags = {
    Name = "NAT Gateway to Internet Gateway"
  }
}

resource "aws_route_table" "private_to_nat_table" {
  vpc_id = aws_vpc.main.id

  # route {
  #   cidr_block = "0.0.0.0/0"
  #   gateway_id = aws_internet_gateway.main.id
  # }

  tags = {
    Name = "Private to NAT Gateway Routing Table"
  }
}

########################## Routes ##############################

resource "aws_route" "nat_to_igw_route" {
  route_table_id         = aws_route_table.nat_to_igw_table.id
  destination_cidr_block = "0.0.0.0/0"
  # nat_gateway_id         = aws_nat_gateway.public_nat.id
  gateway_id = aws_internet_gateway.main.id
}

resource "aws_route" "private_to_nat_route" {
  route_table_id         = aws_route_table.private_to_nat_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.public_nat.id
}