##to know servers ip address we use this output file if we don't have access to aws console and if we have this we don't need to contact cloud team everytime
output "instance_details" {
  value = [aws_instance.web1.id, aws_instance.web1.public_ip, aws_instance.web1.private_ip, aws_instance.web1.public_dns]
}

##Result:
Outputs:

instance_details = [
  "i-0225d895a105e853a",
  "35.170.51.7",
  "172.31.12.237",
  "ec2-35-170-51-7.compute-1.amazonaws.com",
]
