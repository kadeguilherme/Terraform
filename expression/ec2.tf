data "aws_ami" "windows"{
    
    most_recent = true

    filter {
        name = "name"
        values = ["Windows_Server-2016-English-Full-Containers-2022.05.25"]
    }

    owners = ["amazon"]
}

resource "aws_instance" "web"{
    ami = data.aws_ami.windows.id
    instance_type = "t2.micro"

    tags = {
        Name = "HelloWorld"
    }
}