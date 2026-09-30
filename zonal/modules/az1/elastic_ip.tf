resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "eip-nat-az1"
  }
}
