output "ec2_public_ip" {
  value = aws_instance.jfrog.public_ip
}
