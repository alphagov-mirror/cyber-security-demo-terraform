# Specify the provider and access details
provider "aws" {
  region = "eu-west-2"
}

locals {
  check = "aws_security_group_egress_open"
  check-md = "https://github.com/alphagov/cyber-security-demo-terraform/blob/master/tests/aws_security_group_egress_open.md"
}

resource "aws_vpc" "aws_ec2_security_group_ingress_open" {
  cidr_block       = "10.120.0.0/24"

  tags = {
    Name = "${local.check}"
    CheckMD = "${local.check-md}"
  }
}

resource "aws_security_group" "aws_security_group_egress_open_condition_1" {
  name        = "${local.check}_condition_1"
  description = "Fail condition for ${local.check}"
  vpc_id      = "${aws_vpc.aws_security_group_egress_open.id}"

  tags = {
    Name = "${local.check}_condition_1"
    Class = "GdsSupportEgressOpenClient"
    Result = "fail"
    CheckMD = "${local.check-md}"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aws_security_group_egress_open_condition_2" {
  name        = "${local.check}_condition_2"
  description = "Pass condition for ${local.check}"
  vpc_id      = "${aws_vpc.aws_security_group_egress_open.id}"

  tags = {
    Name = "${local.check}_condition_2"
    Class = "GdsSupportEgressOpenClient"
    Result = "pass"
    CheckMD = "${local.check-md}"
  }
