resource "aws_security_group" "base_sg" {
  name        = "Base Security Group"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # add your IP address here
  }
  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Base Security Group"
  }
}