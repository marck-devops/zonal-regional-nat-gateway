# AWS adds the VPC local route (10.0.0.0/16 -> local) automatically.
# Both private subnets send 0.0.0.0/0 to the single regional NAT gateway.
resource "aws_route" "private_default" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.regional.id
}
