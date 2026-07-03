---this is the code to create a server in specific region and giving tags and keypair and instance type
provider "aws" {
region = "ap-south-2"
}
resource "aws_instance" "web" {
tags = {
Name = "sivaterraform"
Environment = "dev"
Client = "Jio"
}

ami = "ami-0ffa797f35095b9f7"
instance_type = "t3.micro"
key_name = "hydkp"
availability_zone = "ap-south-2b"
}
