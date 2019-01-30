# Specify the VPC
resource "aws_vpc" "aws_security_group_permissions" {
  cidr_block       = "10.120.0.0/24"

  tags = {
    Name = "aws_security_group_permissions"
    CSW = "True"
  }
}
