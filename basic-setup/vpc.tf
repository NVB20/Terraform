resource "aws_vpc" "basic_vpc" {
  
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }

}
resource "aws_subnet" "basic_vpc_subnet" {
  vpc_id     = aws_vpc.basic_vpc.id
  cidr_block = "10.0.1.0/24"
}