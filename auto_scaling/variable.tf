variable "regiao" {
  type = string
  default = "us-east-1"
}

variable "instances_name" {
  type = map(string)
  default = {
    ami = "ami-8c1be5f6"
    instance_type = "t2.micro"
    
  }

}

