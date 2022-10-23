terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.74.3, < 4.0"

    }
  }
  required_version = "~> 1.3.3"
}

provider "aws" {
  region                  =  "ap-southeast-1"
  shared_credentials_file = "/home/app/.aws/credentials" # Replace your credential

}