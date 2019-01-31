### Module name
- aws_iam_user_role_trust_relationships

### Description

This test case is intended to look for non-GDS user accounts in trust relationships to assume a role.

### AWS API Details

- iam.list_roles

### Conditions

|Resource|Details|`Class` Tag|`Result` Tag|
|-|-|-|:-:|
|aws_iam_user_role_trust_relationships_condition_1|all user accounts belong to GDS users (622626885786)|AwsIamRolesWithTrustRelationship|pass|
|aws_iam_user_role_trust_relationships_condition_2|one or more non-GDS user accounts have been seen in a trusted relationship list|AwsIamRolesWithTrustRelationship|fail|
