resource "aws_instance" "web" {
  ami           = "ami-0b8b10b5bf11f3a22"
  subnet_id     = module.public_subnet_az1.subnet_output
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name
  vpc_security_group_ids = [
    aws_security_group.base_sg.id,
    aws_security_group.public_sg.id
  ]
  associate_public_ip_address = true
  tags = {
    Name = "Web - FrontEnd"
  }
}

resource "aws_instance" "backend" {
  ami = "ami-0b8b10b5bf11f3a22"
  subnet_id     = module.private_subnet_az1.subnet_output
  instance_type = "t2.micro"
  key_name      = aws_key_pair.mykey.key_name
  vpc_security_group_ids = [
    aws_security_group.base_sg.id,
    aws_security_group.private_sg.id
  ]
  tags = {
    Name = "Backend - Private EC2 Instance"
  }
}

resource "aws_instance" "data" {
  ami                    = "ami-0b8b10b5bf11f3a22"
  subnet_id              = module.data_subnet_az1.subnet_output
  instance_type          = "t2.micro"
  vpc_security_group_ids = [
    aws_security_group.base_sg.id,
    aws_security_group.data_sg.id
  ]
  key_name               = aws_key_pair.mykey.key_name
  tags = {
    Name = "Database - EC2"
  }
}

