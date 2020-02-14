resource "aws_security_group" "private_sg" {
  name        = "Private Security Group"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "Private Security Group"
  }
}

resource "aws_security_group_rule" "ping_egress_private" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = -1
  cidr_blocks = ["0.0.0.0/0"] # add your IP address here

  security_group_id = aws_security_group.private_sg.id
}

