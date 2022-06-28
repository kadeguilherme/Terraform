provider "aws" {
  region     = "us-east-1"

}

terraform {
  backend "s3" {
    bucket = "bucket-ambiente-desenvolvimento-dev"
    dynamodb_table = "basic-dynamodb-lock"
    key = "terraform-test.tfstate"
    
    region = "us-east-1"
  }
}