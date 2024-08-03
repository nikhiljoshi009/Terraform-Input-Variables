provider "aws" {
  region     = "us-east-1"
  access_key = "   "
  secret_key = "   "
}
resource "aws_instance" "ec2_example" {

  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  count         = 1

  tags = {
    Name = "Terraform EC2"
  }

}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2", "user3"]
}
