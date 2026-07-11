resource "aws_instance" "myserver" {
  tags = {
    Name = var.iname
  }
  ami           = var.ami_id
  instance_type = var.itype
}
