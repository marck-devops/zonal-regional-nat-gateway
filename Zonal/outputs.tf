output "vpc_id" {
  description = "Zonal NAT VPC ID."
  value       = aws_vpc.main.id
}

output "az1_nat_gateway_id" {
  description = "NAT gateway for Availability Zone 1."
  value       = module.az1.nat_gateway_id
}

output "az2_nat_gateway_id" {
  description = "NAT gateway for Availability Zone 2."
  value       = module.az2.nat_gateway_id
}

output "az1_instance_id" {
  description = "EC2 instance in private subnet 1."
  value       = module.az1.instance_id
}

output "az2_instance_id" {
  description = "EC2 instance in private subnet 2."
  value       = module.az2.instance_id
}
