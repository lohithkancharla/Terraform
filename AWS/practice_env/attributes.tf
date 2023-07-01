#create resource
resource "aws_instance" "new" {
  count= var.testing == true ? 2 : 0
  ami = var.instance_name[count.index]
  instance_type= var.ins_type[count.index]
  tags= {
    name=var.ins_name[count.index]
  }
}