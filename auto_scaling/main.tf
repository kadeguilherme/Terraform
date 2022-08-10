provider "aws" {
    region = "us-east-1"

}

resource "aws_launch_configuration" "lc-auto-scaling" {
    for_each = toset(["var.instances_name"])
    
    name  = "LC_AUTO-SCALING"
    image_id = lookup(var.instances_name, "ami")
    instance_type = lookup(var.instances_name, "instance_type")
    security_groups = ["sg-017faccb1e8bbdd01"]

}

resource "aws_autoscaling_group" "sg-auto-scaling" {
    for_each = aws_launch_configuration.lc-auto-scaling

    launch_configuration = lookup(each.value, "name")
    name = "SG_AUTO-SCALING"
    availability_zones = [ "us-east-1a" ]
    min_size = 2
    max_size = 4
    tag {
      key = "Name"
      value = "webserver-00"
      propagate_at_launch = true
    }
    

}
