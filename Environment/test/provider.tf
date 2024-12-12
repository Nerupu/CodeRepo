terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.1"
    }
  }

  backend "s3" {
    bucket = "0bc7-dop-aiops-repo-for-config"
    region = "eu-west-1"
    dynamodb_table = "terraform-backend-lock"
    key = "base/terraform.tfstate"
  }
}

# provider "aws" {
#  # region  = var.region
#  # profile = var.profile
# }
provider "aws" {
# region  = var.region
# profile = var.profile
}
# We are facing error due to the above setting hence commenting 
# in the CICD Pipeline we need to use the environment variable 
#  
/*
This config can be done but this is not safe / standard 

provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

This config is done on the jenkins slave now but on the in final need to run on the pipeline to declare secrets
We cannot declare the secrets or save the secrets on the github so we need to use this on the pipeline 

We need to get the access key ID and secret from IAM users to configure this 
provider "aws" {}
% export AWS_ACCESS_KEY_ID="anaccesskey"
% export AWS_SECRET_ACCESS_KEY="asecretkey"
% export AWS_REGION="us-west-2"
Referrence link 
https://registry.terraform.io/providers/hashicorp/aws/latest/docs
*/