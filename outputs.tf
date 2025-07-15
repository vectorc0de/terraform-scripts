output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID subnet public"
  value       = aws_subnet.public.id
}

output "vpc_cidr_block" {
  description = "VPC CIDR block"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_cidr_block" {
  description = "Public CIDR block"
  value       = aws_subnet.public.cidr_block
}