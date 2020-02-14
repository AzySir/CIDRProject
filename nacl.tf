# vpc_cidr     = "10.0.0.0/19"
    # public_cidr  = ["10.0.0.0/23", "10.0.2.0/23", "10.0.4.0/23"]
    # data_cidr    = ["10.0.8.0/23", "10.0.10.0/23", "10.0.12.0/23"]
    # private_cidr = ["10.0.16.0/23", "10.0.20.0/23", "10.0.24.0/23"]
    # az           = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]

resource "aws_network_acl" "public_nacl" {
  vpc_id = aws_vpc.main.id
  subnet_ids = [
    module.public_subnet_az1.subnet_output,
    module.public_subnet_az2.subnet_output,
    module.public_subnet_az3.subnet_output,
  ]

  egress {
    protocol   = "all"
    rule_no    = 1
    action     = "deny"
    cidr_block = "10.0.8.0/21"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = "all"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "all"
    rule_no    = 1
    action     = "deny"
    cidr_block = "10.0.8.0/21"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "all"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "Public NACL"
  }
}

resource "aws_network_acl" "data_nacl" {
  vpc_id = aws_vpc.main.id
  subnet_ids = [
    module.data_subnet_az1.subnet_output,
    module.data_subnet_az2.subnet_output,
    module.data_subnet_az3.subnet_output,
  ]

  ingress {
    protocol   = "all"
    rule_no    = 100
    action     = "deny"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "all"
    rule_no    = 1
    action     = "allow"
    cidr_block = "10.0.16.0/21"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = "all"
    rule_no    = 1
    action     = "allow"
    cidr_block = "10.0.16.0/21"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "Data NACL"
  }
}