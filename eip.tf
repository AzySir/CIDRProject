resource "aws_eip" "public_eip" {
  vpc = true
}

resource "aws_eip" "private_eip" {
  vpc = true
}



