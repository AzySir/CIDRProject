resource "aws_instance" "web" {
  ami           = "ami-0b8b10b5bf11f3a22"
  subnet_id     = module.private_subnet_az1.subnet_output
  instance_type = "t2.micro"
  #   key_name      = "adamskey.key"
key_name = aws_key_pair.mykey.key_name
security_groups = [ aws_security_group.base_sg.id ]

  tags = {
    Name = "Web - FrontEnd"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-0b8b10b5bf11f3a22"
  subnet_id     = module.public_subnet_az1.subnet_output
  instance_type = "t2.micro"
  security_groups = [ aws_security_group.base_sg.id ]
  #   key_name      = "mypem.key"
  key_name = aws_key_pair.mykey.key_name
  tags = {
    Name = "Backend - Private EC2 Instance"
  }
}

resource "aws_instance" "data" {
  ami           = "ami-0b8b10b5bf11f3a22"
  subnet_id     = module.data_subnet_az1.subnet_output
  security_groups = [ aws_security_group.base_sg.id ] 
  instance_type = "t2.micro"
  key_name = aws_key_pair.mykey.key_name
  tags = {
    Name = "Database - EC2 "
  }
}