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

output "az1_instance_id" {
  description = "EC2 instance in private subnet 1."
  value       = module.az1.instance_id
}

output "az2_instance_id" {
  description = "EC2 instance in private subnet 2."
  value       = module.az2.instance_id
}
