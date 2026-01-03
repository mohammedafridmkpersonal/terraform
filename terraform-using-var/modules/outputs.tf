output "public-ip-address" {
  value = aws_instance.instance_by_var.public_ip
}
