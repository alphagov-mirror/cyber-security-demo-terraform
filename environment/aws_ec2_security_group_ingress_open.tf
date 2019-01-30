resource "aws_security_group" "aws_ec2_security_group_ingress_open_condition_1" {
  name        = "aws_ec2_security_group_ingress_open_condition_1"
  description = "Fail condition for aws_ec2_security_group_ingress_open"
  vpc_id      = "${aws_vpc.aws_security_group_permissions.id}"

  tags = {
    CSW = "True"
    Name = "aws_ec2_security_group_ingress_open_condition_1"
    Class = "AwsEc2SecurityGroupIngressOpen"
    Result = "fail"
    Criterion = "aws_ec2_security_group_ingress_open.AwsEc2SecurityGroupIngressOpen"
  }

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aws_ec2_security_group_ingress_open_condition_2" {
  name        = "aws_ec2_security_group_ingress_open_condition_2"
  description = "Fail condition for aws_ec2_security_group_ingress_open"
  vpc_id      = "${aws_vpc.aws_security_group_permissions.id}"

  tags = {
    CSW = "True"
    Name = "aws_ec2_security_group_ingress_open_condition_2"
    Class = "AwsEc2SecurityGroupIngressOpen"
    Result = "fail"
    Criterion = "aws_ec2_security_group_ingress_open.AwsEc2SecurityGroupIngressOpen"
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
  name        = "aws_ec2_security_group_ingress_open_condition_3"
  description = "Pass condition for aws_ec2_security_group_ingress_open"
  vpc_id      = "${aws_vpc.aws_security_group_permissions.id}"

  tags = {
    CSW = "True"
    Name = "aws_ec2_security_group_ingress_open_condition_3"
    Class = "AwsEc2SecurityGroupIngressOpen"
    Result = "pass"
    Criterion = "aws_ec2_security_group_ingress_open.AwsEc2SecurityGroupIngressOpen"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "aws_ec2_security_group_ingress_open_condition_4" {
  name        = "aws_ec2_security_group_ingress_open_condition_4"
  description = "Pass condition for aws_ec2_security_group_ingress_open"
  vpc_id      = "${aws_vpc.aws_security_group_permissions.id}"

  tags = {
    CSW = "True"
    Name = "aws_ec2_security_group_ingress_open_condition_4"
    Class = "AwsEc2SecurityGroupIngressOpen"
    Result = "pass"
    Criterion = "aws_ec2_security_group_ingress_open.AwsEc2SecurityGroupIngressOpen"
  }

  ingress {
    from_port   = 1433
    to_port     = 1433
    protocol    = "tcp"
    cidr_blocks = ["1.1.1.1/32"]
  }
}
