module "dev_instance" {
  source = "/root/envs/dev/compute/"
  iname  = "mustafa-instance"
  itype  = "t3.micro"
  ami_id = "ami-002192a70217ac181"
}

module "dev_security_group" {
  source = "/root/envs/dev/security/"
  sgname = "terraform SG"
  ports  = [22, 80, 8080, 9000]
}

module "dev_storage" {
  source      = "/root/envs/dev/storage/"
  bucket_name = "module.siva.s3.009"
}
