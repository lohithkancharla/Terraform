provider "aws" {
  access_key = ""
  secret_key = ""
  region = "us-east-2"
}

/*provider "aws" {
  count = length(aws_iam_access_key.access)
  access_key = var.aws_iam_access_key.access[*].id
  secret_key = var.aws_iam_access_key.access[*].encrypted_secret
  region = "us-east-2"
}*/