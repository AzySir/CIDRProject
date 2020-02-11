
resource "aws_security_group" "public_sg" {
  name        = "Public Security Group"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "Public Security Group"
  }
}

resource "aws_security_group_rule" "ssh_egress_public" {
  type              = "egress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] # add your IP address here
  security_group_id = aws_security_group.public_sg.id
}

resource "aws_security_group_rule" "ping_egress_public" {
  type              = "egress"
  from_port         = -1
  to_port           = -1
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.public_sg.id
}