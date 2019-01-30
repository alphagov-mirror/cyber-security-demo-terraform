### Module name
- gds_support_egress_open_client

### Description

This test is instended to look for security groups that have outbound (egress) rules
that allows connections from all ports (-1) to any destination (0.0.0.0/0)

### AWS API Details

- describe-security-groups

### Conditions

|Resource|Details|`Class` Tag|`Result` Tag|
|-|-|-|:-:|
|gds_support_egress_open_client_condition_1|all protocols with all port numbers range (-1) with destination of 0.0.0.0/0|GdsSupportEgressOpenClient|fail|
|gds_support_egress_open_client_condition_2|TCP port SSH with destination of 213.86.153.192/26|GdsSupportEgressOpenClient|pass|
