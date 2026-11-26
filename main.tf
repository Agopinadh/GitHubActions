provider "aws" {
}

resource "aws_instance" "dev" {
  ami = "ami-0aacbf72109c53c0c"
  instance_type = "t2.medium"
  tags = {
  Name = "Chariot"
  }
}

terraform {
  backend "s3" {
    bucket       = "bucket-state9"
    key          = "terraform/state.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
