module "az1" {
  source = "./az1"

  vpc_id                = aws_vpc.main.id
  availability_zone     = data.aws_availability_zones.available.names[0]
  public_route_table_id = aws_route_table.public.id

  depends_on = [aws_internet_gateway.main, aws_route.public_default]
}

module "az2" {
  source = "./az2"

  vpc_id                = aws_vpc.main.id
  availability_zone     = data.aws_availability_zones.available.names[1]
  public_route_table_id = aws_route_table.public.id

  depends_on = [aws_internet_gateway.main, aws_route.public_default]
}
