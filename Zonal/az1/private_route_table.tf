resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  tags = {
    Name = "rt-private-subnet-1"
  }
}
