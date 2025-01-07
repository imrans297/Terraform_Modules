# Variables for the VPC module
variable "region" {
  description = "AWS region for the VPC"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "public_subnet1_cidr" {
  description = "CIDR block for the public subnet1"
}

variable "public_subnet2_cidr" {
  description = "CIDR block for the public subnet2"
}

variable "private_subnet1_cidr" {
  description = "CIDR block for the private subnet1"
}

variable "private_subnet2_cidr" {
  description = "CIDR block for the private subnet2"
}