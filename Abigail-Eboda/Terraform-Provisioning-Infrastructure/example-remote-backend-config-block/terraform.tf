//Example of remote backend configuration block
terraform {
  backend "s3" {
    bucket         = "terraform-state-storage"
    key            = "dev/terraform.tfstate"           
    region         = "ap-southeast-2"                   
    encrypt        = true                              
    use_lockfile   = true          
  }
}