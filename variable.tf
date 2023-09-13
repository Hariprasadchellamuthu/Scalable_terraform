variable "ami" {
  type = "map"

  default = {
    "us-east-1" = "ami-053b0d53c279acc90"
    "ap-south-1" = "ami-05552d2dcf89c9b24"
  }
}

variable "instance_count" {
  default = "2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "ap-south-1"
}
