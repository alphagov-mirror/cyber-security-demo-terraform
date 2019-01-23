### Module name
- aws_ec2_security_group_ingress_open

### Description

This test case is to look for security groups that have inbound (ingress) ports
from 0.0.0.0/0 against specific ports (list below) that are at high risk if left open on
the Internet.

- 20
- 21
- 1433
- 1434
- 3306
- 3389
- 4333
- 5432
- 5500


### AWS API Details

- describe-security-groups

### Conditions

|Resource|Details|`Class` Tag|`Result` Tag|
|-|-|-|:-:|
|SG - inbound rule|TCP port 1433 with source of 0.0.0.0/0|AwsEc2SecurityGroupIngressOpen|fail|
|SG - inbound rule|TCP ports 80,1433 with source of 0.0.0.0/0|AwsEc2SecurityGroupIngressOpen|fail|
|SG - inbound rule|TCP port 80 with source of 0.0.0.0/0|AwsEc2SecurityGroupIngressOpen|pass|
|SG - inbound rule|TCP port 1433 with source of 1.1.1.1/32|AwsEc2SecurityGroupIngressOpen|pass|

### References

Based on the Trusted Advisor check, `Security Groups - Specific Ports
Unrestricted` listed here:
https://aws.amazon.com/premiumsupport/technology/trusted-advisor/best-practice-checklist/
