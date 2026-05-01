provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "genai" {
  ami           = "ami-07a00cf47dbbc844c"
  instance_type = "t3.micro"
  user_data = file("install.sh")
  tags = {
    Name = "GenAI-DevOps"
  }
}