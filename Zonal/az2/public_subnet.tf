resource "aws_subnet" "public" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.102.0/24"
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-az2"
  }
}
