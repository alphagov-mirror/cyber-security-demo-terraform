
##
# config to store terraform state in S3

terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-5896d9ada0e3"
    key    = "cyber-security-demo-terraform.tfstate"
    region = "eu-west-2"
  }
}
