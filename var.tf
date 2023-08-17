
# Input Variables
variable "vpc_id" {
  type    = string
  default = "	 vpc-02d9fd54627ca5c19" # Replace with the actual VPC ID of your jenkins svr 
}

variable "security_group_id" {
  type    = string
  default = "sg-004caa499b5e7a54b" # Replace with the actual security group ID of your jenkins sg-group 
}

variable "public_subnet_id" {
  type    = string
  default = "subnet-0a8a314b70217d378" # Replace with the actual public subnet ID of your jenkins public subnet
}

variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "instance_type" {
    type = string
    default = "t2.medium"
  
}

variable "instance_keypair" {
  type = string
  default = "demo-kp"
}
