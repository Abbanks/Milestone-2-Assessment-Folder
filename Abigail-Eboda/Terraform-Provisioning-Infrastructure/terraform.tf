terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.39.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-state-storage-546310934204-us-east-1-an"
    key            = "dev/terraform.tfstate"           
    region         = "us-east-1"                   
    encrypt        = true                              
    use_lockfile   = true          
  }
}