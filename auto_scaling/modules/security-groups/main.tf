resource "aws_security_group" "sgweb" {
    name = "permitir_ssh"
    description = "Permitir conexao via SSH"
    vpc_id = "vpc-0871294b2664cdcf5"

    ingress {
        description = "Permitir conexao SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      "Name" = "permitir-SSH"
    }
}