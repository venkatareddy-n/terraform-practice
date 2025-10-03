provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket         = "venkat1991" #S3 Bucket Name
    key            = "1-ec2-s3-key"
    region         = "us-east-1"
    dynamodb_table = "venkat-db" # Dynamo DB Table Name
  }

}