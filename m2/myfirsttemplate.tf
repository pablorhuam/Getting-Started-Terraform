provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "dguillentfinstance" {
  ami           = "ami-077e31c4939f6a2f3"                   
  instance_type = "t2.micro"
  key_name      = "cakeypair"

  tags = {
    "Environment"   = "Staging"
    "Resource Type" = "Computing"
    "Team Owner"    = "Administrator"
    "Managed-by"    = "Terraform"
    "Name"          = "caterraform01"
  }
}

