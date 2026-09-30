output "private_subnet_id" {
  description = "Private subnet 2 (10.0.2.0/24)."
  value       = aws_subnet.private.id
}

output "instance_id" {
  description = "EC2 instance in private subnet 2."
  value       = aws_instance.this.id
}
