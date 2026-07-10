
resource "aws_instance" "web2" {
  tags = {
    Name = "mumbai server"
  }
  provider          = aws.mumbai
  ami               = "ami-01a18c38ece67e620"
  instance_type     = "c7i-flex.large"
  key_name          = "mumbaikp"
  availability_zone = "ap-south-1a"
  ##below is the meta arguments section
  lifecycle {
    create_before_destroy = true ##this will make sure to create new server first and delete existing server to avoid downtime if any problem occured to server and has to recreate
    prevent_destroy       = true ##this will make sure no one can delete our server using terraform, but manual option is there but there also we can update iam settings
    ignore_changes        = [tags, instance_type] ##this will make sure no one can update our tags and instance type and terraform will ignore those if anyone attempt to change, we can also more attribute here.
  }
}
