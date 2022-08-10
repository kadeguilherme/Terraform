resource "aws_instance" "Ambiente-dev" {
    count = 5
    instance_type = "t2.micro"
    ami = "ami-0022f774911c1d690"
    key_name = "sua-chave"
    vpc_security_group_ids = [aws_security_group.acesso_ssh_http.id]
    associate_public_ip_address = true
    
    tags = {
      Name = "srv-dev-01"
    }

}