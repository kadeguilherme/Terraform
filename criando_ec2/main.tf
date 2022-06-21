provider "aws" {
    region = "us-east-1"
}

terraform {
    backend "s3"{
        bucket = "bucket-ambiente-desenvolvimento"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}

resource "aws_instance" "Ambiente-dev" {
    instance_type = "t2.micro"
    ami = "ami-0022f774911c1d690"
    key_name = "sua-chave"
    vpc_security_group_ids = [aws_security_group.acesso_ssh_http.id]
    associate_public_ip_address = true
    
    tags = {
      Name = "srv-dev-01"
    }

}

variable "ambiente_vpc_id" {
  default = "vpc-01d41f107733b70f0"
}

variable "ambiente_subnet_public_id" {
  default = "subnet-05043698943b831d8"
}

resource "aws_security_group" "acesso_ssh_http" {
    name = "permitir_ssh"
    description = "Permite SSH e HTTP na instancia EC2"
    vpc_id = var.ambiente_vpc_id

    ingress {
        description = "Acesso SSH "
        from_port = 22
        cidr_blocks = [ "0.0.0.0/0" ]
        to_port = 22
        protocol = "tcp"
    } 

    ingress {
        description = "Acesso HTTP "
        from_port = 8080
        cidr_blocks = [ "0.0.0.0/0" ]
        to_port = 8080
        protocol = "tcp"
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "permitir_ssh_e_http"
    }



}
