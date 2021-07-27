provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami                  = "ami-00bf4ae5a7909786c "
  instance_type        = "t2.micro"
  iam_instance_profile = iam_instance_profile.new_ec2_profile.name

  tags = {
    Name = "HelloWorld"
  }
}