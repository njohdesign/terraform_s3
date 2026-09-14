provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "njohdesign-terraform-s3-lab-20260914-7842"
  acl    = "private"

  tags = {
    Environment = "Lab"
  }
}
