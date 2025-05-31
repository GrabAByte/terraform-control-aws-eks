variable "environment_map" {
  type        = map(any)
  description = "The environment lookup for each workspace"
  default = {
    development    = "development"
    pre-production = "pre-production"
    production     = "production"
  }
}

variable "region" {
  type = string
  description = "The AWS region in which to deploy"
  default = "eu-west-2"
}

locals {
  environment = lookup(var.environment_map, terraform.workspace, "development")
  cluster_name = "grababyte-eks-${local.environment}"

  tags = {
    environment = local.environment
    project     = "api-lambda-trigger-to-s3"
  }
}
