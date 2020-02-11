# resource "aws_security_group" "base_sg" {
#   name        = "Base Security Group"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # add your IP address here
#   }
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     from_port   = -1
#     to_port     = -1
#     protocol    = "icmp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "Base Security Group"
#   }
# }

# resource "aws_security_group" "public_sg" {
#   name        = "Public Security Group"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   egress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # add your IP address here
#   }

#   egress {
#     from_port   = -1
#     to_port     = -1
#     protocol    = "icmp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "Public Security Group"
#   }
# }

# resource "aws_security_group" "private_sg" {
#   name        = "Private Security Group"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = -1
#     cidr_blocks = ["0.0.0.0/0"] # add your IP address here
#   }

#   tags = {
#     Name = "Private Security Group"
#   }
# }