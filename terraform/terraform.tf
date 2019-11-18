terraform {
 backend "s3" {
 encrypt = true
 bucket = "terraformbackend"
 dynamodb_table = "terraform-lock"
 region = "ap-southeast-2"
 key = "tf-eks"
 }
}

# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "ap-southeast-2"
}

# provider "aws" {
#   assume_role {
#     role_arn     = "arn:aws:iam::ACCOUNT_ID:role/ROLE_NAME"
#     session_name = "SESSION_NAME"
#     external_id  = "EXTERNAL_ID"
#   }
# }

