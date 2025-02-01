provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # old method
  backend "s3" {
    bucket         = "venkat-swan" #S3 Bucket Name
    key            = "ec2-s3-key"
    region         = "us-east-1"
    dynamodb_table = "venkat-db" # Dynamo DB Table Name
  }

  # # new method
  # backend "s3" {
  #   bucket       = "venkat-swan"
  #   key          = "ec2-s3-key"
  #   region       = "us-east-1"
  #   use_lockfile = true # Simple and built-in!
  # }
}