provider "aws" {
  region = var.region
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.3.1"

  name          = "${var.name}-ec2-t2.micro-machine"
  instance_type = var.type
  ami           = data.aws_ami.amazon_linux.id

}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}