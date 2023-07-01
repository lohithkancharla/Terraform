terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
    access_key = "AKIAZCYQGEPFZXDJ4SDN"
    secret_key = "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"
    region = "us-east-2"
}

