resource "aws_instance" "myinstance" {
  ami = "ami-002192a70217ac181"
  tags = {
    Name = "YourServer"
  }
  instance_type          = "t3.micro"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  key_name               = "KOPSKP"
  root_block_device {
    volume_size = 10
  }
}
