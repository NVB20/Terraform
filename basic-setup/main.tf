provider "aws" {
  region = var.region
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.3.1"

  name = "${var.name}-ec2-t2.micro-machine"
  instance_type = var.type

}