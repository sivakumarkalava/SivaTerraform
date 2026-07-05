
resource "aws_instance" "myinstace" {
  tags = {
    Name = var.iname
  }
  ami               = var.ami_id
  instance_type     = var.itype
  key_name          = var.key
  availability_zone = var.az
  root_block_device {
    volume_size = var.volume
  }
}
