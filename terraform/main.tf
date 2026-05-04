# key pair to login to ec2 instance

resource "aws_key_pair" "my_key" {
  key_name   = "genai-key-ec2"
  public_key = file("genai-key-ec2.pub")
  
}

# VPC and security group to allow traffic to ec2 instance

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
resource "aws_instance" "genai" {
  ami           = "ami-07a00cf47dbbc844c"
  instance_type = "t3.micro"
  user_data = file("install.sh")
  tags = {
    Name = "GenAI-DevOps"
  }
}

resource "aws_security_group" "genai_sg" {
  name        = "genai_sg"
  description = "Security group for GenAI instance"

 ingress {
    from_port = 22 #ssh
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80 #http
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443 #https
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8080 #backend app port
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 5000 #frontend app port
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   #outbound rules
    egress {
        from_port = 0
        to_port = 0
        protocol = -1 # semantically equivalent to all ports
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow all outbound traffic"
    }
    tags = {
        Name = "genai-sg"
    }
}