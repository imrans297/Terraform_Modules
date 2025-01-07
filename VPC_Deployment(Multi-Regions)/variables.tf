variable "regions" {
  description = "List of regions to deploy VPCs"
  type = list(string)
  default = ["ap-south-1", "us-east-1", "us-east-2"]
}

# # Variables for the main module
# variable "default_region" {
#   description = "Default region for AWS provider"
#   type        = string
#   default     = "us-east-1"
# }


variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr1" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "public_subnet_cidr2" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr1" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "private_subnet_cidr2" {
  description = "CIDR block for the private subnet"
  type        = string
}