provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
  ami = "ami-0aacbf72109c53c0c"
  instance_type = "t2.medium"
  tags = {
  Name = "Chariot"
  }
}
