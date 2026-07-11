output "mydata" {
  value = [aws_instance.myserver.id, aws_instance.myserver.public_ip, aws_instance.myserver.private_ip]
}
