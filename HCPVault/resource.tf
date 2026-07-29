resource "aws_instance" "web" {
  tags = {
    Name = "Myserver"
  }
  ami           = "ami-02b64aa047cb5edf5"
  instance_type = "t3.micro"
  key_name      = "KOPSKP"
}

