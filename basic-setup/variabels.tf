variable "name" {
    description = "The name of the EC2 instances"
    type = string
    default = "amazing-ec2"
}
variable "type" {
 type        = string
 description = "Instance type for the EC2 instance"
 default     = "t2.micro"
 sensitive   = true
}
variable "region" {
    description = "The region of the EC2 instances"
    type = string
    default = "us-east-1"
}