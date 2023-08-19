# AWS 
variable "region" {
    description = "The region of the EC2 instances"
    type        = string
    default     = "us-east-1"
}
#EC2 variabels
variable "instance_name" {
 type        = string
 description = "Instance name for the EC2 instance"
 default     = "look-at-my-instance"
}
variable "instance_type" {
 type        = string
 description = "Instance type for the EC2 instance"
 default     = "t2.micro"
 sensitive   = true
}
variable "instance_amount" {
 type        = string
 description = "Instance amount created of the EC2 instance"
 default     = "1"
}


#VPC variabels
variable "vpc_name" {
    description = "The name of the VPC network"
    type        = string
    default     = "prod-basic_vpc_net"
}
variable "vpc_cidr" {
    description = "The CIDR of the VPC network"
    type        = string
    default     = "10.0.1.0/24"
}

 