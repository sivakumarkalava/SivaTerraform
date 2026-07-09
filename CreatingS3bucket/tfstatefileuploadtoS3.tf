##this is the backed file to upload our terraform.tfstate file which contains all the information about what resources are created using terraform and
##we are storing this in S3 bucket to attain high availability and security.
##Also enabled lock for state file so that two users cannot update the resources at the same time, similar to git merge conflicts. if we use state locks so that anyone applies the recent update (terraform apply) 
##if any other person also uses same command then that user get one error message saying the other user is trying to update the tfstate file. if that change is applied then the lock is disabled, then the second user 
##can apply his changes.

terraform {
  backend "s3" { ##we call this as backend file
    bucket       = "s3bucket4statefile09"
    key          = "prod/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
