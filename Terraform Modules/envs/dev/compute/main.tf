resource "aws_instance" "myserver" {
tags = {
Name = var.iname
}
ami = var.ami_id
instance_type = var.itype
}
[root@ip-172-31-13-63 compute]# terraform fmt
main.tf
output.tf
variable.tf
[root@ip-172-31-13-63 compute]# cat main.tf
resource "aws_instance" "myserver" {
  tags = {
    Name = var.iname
  }
  ami           = var.ami_id
  instance_type = var.itype
}
