provider "aws" {
  region              = "us-east-1"
  version             = "~> 2"
  allowed_account_ids = ["my-account-id"]
}

terraform {
  backend "s3" {
    bucket         = "terraform-state.mybucket.com"
    dynamodb_table = "terraform-state-lock"
    key            = "state/kafka-example"
    region         = "us-east-1"
  }
}
