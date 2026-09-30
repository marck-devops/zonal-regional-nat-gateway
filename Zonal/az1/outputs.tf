output "nat_gateway_id" {
  description = "Zonal NAT gateway nat-az1."
  value       = aws_nat_gateway.this.id
}

output "private_subnet_id" {
  description = "Private subnet 1 (10.0.1.0/24)."
  value       = aws_subnet.private.id
}

output "instance_id" {
  description = "EC2 instance in private subnet 1."
  value       = aws_instance.this.id
}
