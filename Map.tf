provider "aws" {
   region     = "us-east-1"
   access_key = "   "
   secret_key = "   "
}
resource "aws_instance" "ec2_example" {

   ami           = "ami-04a81a99f5ec58529"
   instance_type =  "t2.micro"

   tags = var.project_environment

}


variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    project     = "project-alpha",
    environment = "dev"
  }
}
