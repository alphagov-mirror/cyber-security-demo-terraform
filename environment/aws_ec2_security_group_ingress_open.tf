# Specify the provider and access details
provider "aws" {
  region = "eu-west-2"
}

locals {
  check = "aws_ec2_security_group_ingress_open"
  check-md = "https://github.com/alphagov/cyber-security-demo-terraform/blob/master/tests/aws_ec2_security_group_ingress_open.md"
}

resource "aws_vpc" "aws_ec2_security_group_ingress_open" {
  cidr_block       = "10.110.0.0/24"

  tags = {
    Name = "${local.check}"
    CheckMD = "${local.check-md}"
  }
}

resource "aws_security_group" "aws_ec2_security_group_ingress_open_condition_1" {
  name        = "${local.check}_condition_1"
  description = "Fail condition for ${local.check}"
  vpc_id      = "${aws_vpc.aws_ec2_security_group_ingress_open.id}"

  tags = {
    Name = "${local.check}_condition_1"
    Class = "AwsEc2SecurityGroupIngressOpen"
    Result = "fail"
    CheckMD = "${local.check-md}"
  }

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aws_ec2_security_group_ingress_open_condition_2" {
  name        = "${local.check}_condition_2"
  description = "Fail condition for ${local.check}"
  vpc_id      = "${aws_vpc.aws_ec2_security_group_ingress_open.id}"

  tags = {
    Name = "${local.check}_condition_2"
    Class = "AwsEc2SecurityGroupIngressOpen"
    Result = "fail"
    CheckMD = "${local.check-md}"
  }

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aws_ec2_security_group_ingress_open_condition_3" {
  name        = "${local.check}_condition_3"
  description = "Pass condition for ${local.check}"
  vpc_id      = "${aws_vpc.aws_ec2_security_group_ingress_open.id}"

  tags = {
    Name = "${local.check}_condition_3"
    Class = "AwsEc2SecurityGroupIngressOpen"
    Result = "pass"
    CheckMD = "${local.check-md}"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aws_ec2_security_group_ingress_open_condition_4" {
  name        = "${local.check}_condition_4"
  description = "Pass condition for ${local.check}"
  vpc_id      = "${aws_vpc.aws_ec2_security_group_ingress_open.id}"

  tags = {
    Name = "${local.check}_condition_4"
    Class = "AwsEc2SecurityGroupIngressOpen"
    Result = "pass"
    CheckMD = "${local.check-md}"
  }

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["1.1.1.1/32"]
  }
}
