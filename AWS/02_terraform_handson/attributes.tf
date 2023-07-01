resource "aws_instance" "two" {
  ami           = "${var.ec2_name}"
  instance_type = "${var.ec2_instance_type}"
  /*count         = 2*/
  count         = var.test ? 2 : 0
  tags = {
    Name = "${var.ec2_tag_name}"
  }
}


resource "aws_eip" "lb" {
  instance = "${var.ei}"
  vpc= true
  count         = var.test ? 2 : 0
}

/*resource "aws_vpc" "main" {
  cidr_block       = "${var.ip_add}"
  instance_tenancy = "default"

}*/

/*resource "aws_vpc_ipam_pool" "t" {
  address_family = "${var.ip_fam}"
  ipam_scope_id  = aws_vpc_ipam.t.private_default_scope_id
  
  count         = var.test ? 2 : 0
}*/

/*resource "aws_s3_bucket" "three"{
    bucket= "${var.bucket_name}"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.three.id
  acl = "private"
  count         = var.test ? 2 : 0
}*/