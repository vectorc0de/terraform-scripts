variable "aws_region" {
  description = "region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "test001."
  type        = string
  default     = "vpc001"
}

variable "vpc_cidr_block" {
  description = "CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "CIDR public"
  type        = string
  default     = "10.0.1.0/24"
}