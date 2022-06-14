provider "aws" {
  region = "us-east-1"
  version = "~> 2.0"
}

resource "aws_s3_bucket" "linuxtips" {
  #Lembre de trocar o bucket para o seu, nao pode ser o mesmo nome
    bucket = "docker-guilherme"
    acl = "private"
  tags = {
    Name = "Meu bucket de teste"
    Environment = "Dev"
  }
}
