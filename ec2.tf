resource "aws_instance" "web" {
  ami           = "${var.ec2_name}"
  instance_type = "${var.ec2_instance_type}"

  tags = {
    Name = "${var.ec2_tag_name}"
  }
}

resource "aws_eip" "b"{
  vpc=true
}