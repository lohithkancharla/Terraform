output "access_key" {
    
  value = aws_iam_access_key.access[*].id
}

output "secret_key" {
  value = aws_iam_access_key.access[*].encrypted_secret
  
}