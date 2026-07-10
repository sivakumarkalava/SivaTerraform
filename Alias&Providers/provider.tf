terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.50.0" ##to use few versions cause in real time we don't use a specific version and latest version, we use some stable versions
    }
  }
}
##lets say we have to create 2 servers in 2 different regions, terraform don't know which resource should use which provider that's when we use this ALIAS in providers 
##and mention same in resource file as provider=aws.first and provider=aws.mumbai and note one thing that by default first resource will use first provider
##but this is not applicable for other resources
provider "aws" {
  region = "us-east-1"
  alias  = "first" ##defined alias for first resource
}

provider "aws" {
  region = "ap-south-1"
  alias  = "mumbai" ##this is for second resourec
}


