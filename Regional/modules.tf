module "az1" {
  source = "./az1"

  vpc_id                 = aws_vpc.main.id
  availability_zone      = data.aws_availability_zones.available.names[0]
  private_route_table_id = aws_route_table.private.id

  depends_on = [aws_route.private_default]
}

module "az2" {
  source = "./az2"

  vpc_id                 = aws_vpc.main.id
  availability_zone      = data.aws_availability_zones.available.names[1]
  private_route_table_id = aws_route_table.private.id

  depends_on = [aws_route.private_default]
}
