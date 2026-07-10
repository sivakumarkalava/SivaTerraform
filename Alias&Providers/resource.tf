resource "aws_instance" "web1" {
  tags = {
    Name = "Virgin Server"
  }
  provider          = aws.first ##called alias here now that this resource know which provider has to use 
  instance_type     = "t3.micro"
  ami               = "ami-002192a70217ac181"
  key_name          = "KOPSKP"
  availability_zone = "us-east-1a"
}


resource "aws_instance" "web2" {
  tags = {
    Name = "mumbai server"
  }
  provider          = aws.mumbai ##called alias here now that this resource know which provider has to use
  ami               = "ami-01a18c38ece67e620"
  instance_type     = "c7i-flex.large"
  key_name          = "mumbaikp"
  availability_zone = "ap-south-1a"
}
