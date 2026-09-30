output "vpc_id" {
  description = "Zonal NAT VPC ID."
  value       = aws_vpc.main.id
}

output "public_route_table_id" {
  description = "Public route table that sends 0.0.0.0/0 to the internet gateway."
  value       = aws_route_table.public.id
}
