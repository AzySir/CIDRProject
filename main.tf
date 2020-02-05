resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/19"

  tags = {
    Name = var.projecttag
  }
}

output "main_vpc" {
  value = aws_vpc.main.id
  description = "Main VPC"
}