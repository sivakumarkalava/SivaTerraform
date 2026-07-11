module "stage_instance" {
  source = "/root/envs/stage/compute/"
  iname  = "stage-instance"
  itype  = "t3.micro"
  ami_id = "ami-002192a70217ac181"
}

module "stage_security_group" {
  source = "/root/envs/stage/security/"
  sgname = "terraform SG-stage"
  ports  = [22, 80, 8080, 9000]
}

module "stage_storage" {
  source      = "/root/envs/stage/storage/"
  bucket_name = "module.siva.stage.s3.009"
}
