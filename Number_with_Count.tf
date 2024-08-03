provider "aws" {
  region     = "us-east-1"
  access_key = "        "
  secret_key = "        "
}

resource "aws_instance" "ec2_example" {

  ami           = "ami-0a0e5d9c7acc336f1" 
  instance_type = "t2.micro"
  count         = var.instance_count

  tags = {
    Name = "Terraform EC2"
  }
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}
