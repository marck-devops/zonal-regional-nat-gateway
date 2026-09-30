resource "aws_nat_gateway" "this" {
  allocation_id     = aws_eip.nat.id
  subnet_id         = aws_subnet.public.id
  availability_mode = "zonal"
  connectivity_type = "public"

  tags = {
    Name = "nat-az1"
  }

  depends_on = [aws_route_table_association.public]
}
