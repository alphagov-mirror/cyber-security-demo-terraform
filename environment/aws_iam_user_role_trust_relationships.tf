resource "aws_iam_role" "aws_iam_user_role_trust_relationships_condition_2" {
  name = "aws_iam_user_role_trust_relationships_condition_2"

  tags = {
    CSW = "true"
    Name = "aws_iam_user_role_trust_relationships_condition_2"
    Result = "fail"
    Criterion = "aws_iam_roles_with_trust_relationship.AwsIamRolesWithTrustRelationship"
  }


  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": [
          "arn:aws:iam::489877524855:role/test_csw_role"
        ]
      },
      "Action": "sts:AssumeRole",
      "Condition": {
        "Bool": {
          "aws:MultiFactorAuthPresent": "true"
        }
      }
    }
  ]
}
EOF
}
