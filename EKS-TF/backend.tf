terraform {
  backend "s3" {
     bucket         = "my-aws-jekins"
    region          = "eu-west-2"
    key             = "Jenkins-server/terraform.tfstate"
    use_lockfile    = true
    encrypt         = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}