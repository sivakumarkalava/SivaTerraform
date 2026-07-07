resource "aws_instance" "myinstance" {
  ami = "ami-06067086cf86c58e6"
  instance_type = "t3.micro"
  tags = {
    Name = "myserver"
  }
  count = 3
}
