provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "Terraform_s3" # Replace with a unique bucket name
  acl    = "private"

  tags = {
    Environment = "Lab"
  }
}