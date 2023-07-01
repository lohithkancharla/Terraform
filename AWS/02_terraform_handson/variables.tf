variable "ec2_name" {
  
  description = "The name of the ec2 name. Must be globally unique."
  default     = "ami-0e820afa569e84cc1"
}

variable "ec2_instance_type" {
  description = "The name of the ec2 instance type. Must be globally unique."
  default     = "t2.micro"
}

variable "ec2_tag_name" {
  description = "The name of the ec2 tag type. Must be globally unique."
  default     = "second_ec2"
}

variable "ei"{
  default = "aws_instance.web.id"
}
/*variable "ip_add" {
  default = "10.0.0.0/16"
  
}

variable "ip_fam"{
  default = "ipv4"
}*/
variable "test"{
  type       = bool
  default = true
}


/*variable "bucket_name" {
    default = "yougotitmayyam"
}*/

