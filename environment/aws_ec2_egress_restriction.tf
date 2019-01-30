resource "aws_security_group" "aws_security_group_egress_open_condition_1" {
  name        = "aws_security_group_egress_open_condition_1"
  description = "Fail condition for aws_security_group_egress_open"
  vpc_id      = "${aws_vpc.aws_security_group_permissions.id}"

  tags = {
    CSW = "true"
    Name = "aws_security_group_egress_open_condition_1"
    Class = "GdsSupportEgressOpenClient"
    Result = "fail"
    Criterion = "aws_ec2_egress_restriction.UnrestrictedEgressSecurityGroups"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aws_security_group_egress_open_condition_2" {
  name        = "aws_security_group_egress_open_condition_2"
  description = "Pass condition for aws_security_group_egress_open"
  vpc_id      = "${aws_vpc.aws_security_group_permissions.id}"

  tags = {
    CSW = "true"
    Name = "aws_security_group_egress_open_condition_2"
    Class = "GdsSupportEgressOpenClient"
    Result = "pass"
    Criterion = "aws_ec2_egress_restriction.UnrestrictedEgressSecurityGroups"
}

 egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["213.86.153.192/26"]
  }
}
