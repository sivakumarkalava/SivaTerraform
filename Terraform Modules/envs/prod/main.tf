module "prod_instance" {
  source = "/root/envs/prod/compute/"
  iname  = "prod-instance"
  itype  = "t3.micro"
  ami_id = "ami-002192a70217ac181"
}

module "prod_security_group" {
  source = "/root/envs/prod/security/"
  sgname = "terraform SG-prod"
  ports  = [22, 80, 8080, 9000]
}

module "prod_storage" {
  source      = "/root/envs/prod/storage/"
  bucket_name = "module.siva.prod.s3.009"
}
