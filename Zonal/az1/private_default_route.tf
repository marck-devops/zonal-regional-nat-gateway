# AWS adds the VPC local route (10.0.0.0/16 -> local) automatically.
# Internet-bound traffic from private subnet 1 targets nat-az1.
resource "aws_route" "private_default" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.this.id
}
