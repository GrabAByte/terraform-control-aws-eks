terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.7"
    }
  }

  backend "s3" {
    bucket  = "grababyte-tfstate"
    key     = "convertr/convertr.tfstate"
    region  = "eu-west-2"
    encrypt = true
  }

  # ubuntu 22.04 used as github runner as it has terraform baked
  # 1.11 latest version available on this build
  required_version = ">= 1.11"
}
