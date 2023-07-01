resource "aws_iam_user" "usernames" {
  count = "${length(var.users)}"
  name = var.users[count.index]
}

resource "aws_iam_access_key" "access" {
  count = length(aws_iam_user.usernames)
  user = aws_iam_user.usernames[count.index].name
}


resource "aws_instance" "new" {
  count= var.testing == true ? 2 : 0
  ami = var.instance_name[count.index]
  instance_type= var.ins_type[count.index]
  tags= {
    name=var.ins_name[count.index]
  }
}

