resource "aws_security_group" "ec2" {
  name        = "ec2-az2"
  description = "Egress for the private EC2 instance in Availability Zone 2."
  vpc_id      = var.vpc_id

  egress {
    description = "Internet via the regional NAT gateway"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-az2"
  }
}
