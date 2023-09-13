provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "foo" {
  count = var.aws_service == "EC2" ? var.instance_count : 0
  ami           = lookup(var.ami, var.aws_region)
  instance_type = var.instance_type
  tags = {
      Name = "TF-Instance-$ {count.index + 1}"
  }
}
