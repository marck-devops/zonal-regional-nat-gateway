variable "vpc_id" {
  description = "VPC that owns Availability Zone 2 subnets and the zonal NAT gateway."
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for private subnet 2 and NAT gateway nat-az2."
  type        = string
}

variable "public_route_table_id" {
  description = "Public route table that sends 0.0.0.0/0 to the internet gateway."
  type        = string
}
