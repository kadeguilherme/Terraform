provider "aws" {
  version = "~> 4.0"
  region  = "us-east-1"
}


locals {
  setup_name = "maria-quiteria"
}


resource "aws_vpc" "vpc-web-maria-quiteria" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc-${local.setup_name}"
  }
}

resource "aws_subnet" "sub-web-maria-quiteria" {
  vpc_id     = aws_vpc.vpc-web-maria-quiteria.id
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "sub-${local.setup_name}"
  }
}

resource "aws_instance" "ec2-maria-quiteria" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.sub-web-maria-quiteria.id

  tags = {
    Name = "ec2-${local.setup_name}"
    env  = "prod-${local.setup_name}"
  }
}
