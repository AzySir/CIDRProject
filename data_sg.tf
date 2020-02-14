resource "aws_security_group" "data_sg" {
  name        = "Data Security Group"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "Data Security Group"
  }
}

resource "aws_security_group_rule" "ping_egress_data" {
  type        = "egress"
  from_port   = -1
  to_port     = -1
  protocol    = "icmp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = aws_security_group.data_sg.id
}

