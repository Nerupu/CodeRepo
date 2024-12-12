terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.1"
    }
  }
}

provider "aws" {
 region  = "ca-central-1"
 profile = "default"
}