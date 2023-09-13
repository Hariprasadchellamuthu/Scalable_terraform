provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-053b0d53c279acc90" 
  instance_type = var.instance_type
  tags = {
      Name = "TF-Instance-$ {count.index + 1}"
  }
}
