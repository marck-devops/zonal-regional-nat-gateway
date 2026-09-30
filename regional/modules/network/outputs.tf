output "vpc_id" {
  description = "Regional NAT VPC ID."
  value       = aws_vpc.main.id
}

output "nat_gateway_id" {
  description = "Regional NAT gateway shared by both Availability Zones."
  value       = aws_nat_gateway.regional.id
}

output "private_route_table_id" {
  description = "Route table used by both private subnets."
  value       = aws_route_table.private.id
}
