### Tests

This folder is for test markdown. The process is;

- add check to the [master list](https://docs.google.com/spreadsheets/d/1wV9_GOy12qDSzdq_-SKvuUfHiBapDbdykQhla1emqUk)
- create research ticket in Jira
- research the check and create a markdown
  - copy the [example file](example.md) and name the new check file what the
  module would be called (e.g.: `aws_ec2_security_group_ingress_open.md`)
  - edit and fill in the check details, including conditions
- create resources in Terraform
  - _to do_
- deploy to AWS demo account
- get API output for unit tests
- **if the research shows a valid check**
- create an implementation ticket in Jira
- create the check in [csw-backend](https://github.com/alphagov/csw-backend)
- write a unit test
  - _to do_

An example is: [aws_ec2_security_group_ingress_open.md](aws_ec2_security_group_ingress_open.md)
