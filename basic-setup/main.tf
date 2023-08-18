resource "aws_instance" "simple-ec2" {
 
  count                       = var.instance_amount
  instance_type               = var.instance_type
  ami                         = data.aws_ami.amazon_linux.id

  vpc_security_group_ids      = [aws_security_group.sg_tls.id]
  subnet_id                   = aws_subnet.basic_vpc_subnet.id
  associate_public_ip_address = true
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }
}