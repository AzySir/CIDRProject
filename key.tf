resource "aws_key_pair" "mykey" {
  key_name = "mykey"
  #   public_key = file("./security/mykey.pub")
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDWlBxZ++mlZdkHd2mpclSXMY8iZzU/KzOS3p68mXFipk3KfYau/Bvk+ToAwW+/C61NQNc+H2D8VRalXkCCYTWWGBPXZN+PVSn3T5DoMlT/L6lCc9U/Ae0vbgAlu/sTBlM5AcbBEUDaLD5K0BlZt9FMImT72MpzrAqqHePp9jgrgRMpBH+hUrMn2QRAQ684rvc7MWs56HoDBIwc8ZghiQZy9LvU7vuDEtbz8Hpd2NgylqJ9Wp9qIZikha3OvwNnZfrEIhncP5/RYEUtrlW/k/7bczjbIDEDZYeKnp055tGig9/6DAqdwXADCopMXTOJysfhmfLVIb9QU33kOFJk4GgJ adamsir@SVN-19-344"
}