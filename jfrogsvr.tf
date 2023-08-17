
resource "aws_instance" "jfrog" {
  #count         = "2"
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  user_data     = file("jfrog.sh")
  vpc_security_group_ids      = [var.security_group_id] # Attach the specified security group
  subnet_id                   = var.public_subnet_id    # Use the specified public subnet
  associate_public_ip_address = true

  tags = {
    Name = "tutor-jfrog-svr"
  }
}
