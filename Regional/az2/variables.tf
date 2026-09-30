variable "vpc_id" {
  description = "VPC that owns the Availability Zone 2 private subnet."
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for private subnet 2."
  type        = string
}

variable "private_route_table_id" {
  description = "Shared private route table that sends 0.0.0.0/0 to the regional NAT gateway."
  type        = string
}
