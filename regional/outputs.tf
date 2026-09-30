output "vpc_id" {
  description = "Regional NAT VPC ID."
  value       = module.network.vpc_id
}

output "nat_gateway_id" {
  description = "Regional NAT gateway shared by both Availability Zones."
  value       = module.network.nat_gateway_id
}

output "private_route_table_id" {
  description = "Route table used by both private subnets."
  value       = module.network.private_route_table_id
}

output "az1_instance_id" {
  description = "EC2 instance in private subnet 1."
  value       = module.az1.instance_id
}

output "az2_instance_id" {
  description = "EC2 instance in private subnet 2."
  value       = module.az2.instance_id
}
