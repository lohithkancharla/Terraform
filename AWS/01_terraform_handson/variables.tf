# Input variable: S3 bucket name
variable "ec2_name" {
  description = "The name of the ec2 name. Must be globally unique."
  default     = "ami-07dfed28fcf95241c"
}

variable "ec2_instance_type" {
  description = "The name of the ec2 instance type. Must be globally unique."
  default     = "t2.micro"
}

variable "ec2_tag_name" {
  description = "The name of the ec2 tag type. Must be globally unique."
  default     = "first_ec2"
}