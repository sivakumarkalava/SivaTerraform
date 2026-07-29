resource "aws_instance" "web" {
  tags = {
    Name = "Myserver"
  }
  ami           = "ami-02b64aa047cb5edf5"
  instance_type = "t3.micro"
  key_name      = "KOPSKP"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "siva.vault.bucket009"
  depends_on = [aws_instance.web]
}

//Note: depends_on is nothing but creating resources one after another rather than creating parallelly. If we don;t specify depends_on all resources will create at a time parallely. 
//Another point: By default terraform can create 10 resouces paralelly, and we cannot say what is the maximum limit cause there is no hard limit. if we want to specify how many we want to create we can say as 
terraform apply --paralellism=20 this number can change according to our needs.
//And this depends_on is explicit giving cause we are telling terraform to create like that but by default it has implicit creation, this will apply for vpc, subnets, Route tables, internet gateway, nat gateway,
subnet association and etc..,
