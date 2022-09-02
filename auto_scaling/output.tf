 output "instance_name" {
    value = values(aws_launch_configuration.lc-auto-scaling)
}