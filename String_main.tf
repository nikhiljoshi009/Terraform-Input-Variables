provider "aws" {
  region     = "us-east-1"
  access_key = "      "
  secret_key = "      "
}

resource "aws_instance" "ec2_example" {

  ami           = "ami-04a81a99f5ec58529"
  instance_type = var.instance_type

  tags = {
    Name = "Terraform EC2"
  }
}

variable "instance_type" {
  description = "Instance type t2.micro"
  type        = string
  default     = "t2.micro"
}
