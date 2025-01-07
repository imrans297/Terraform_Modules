# Terraform Provider Block

# Provider for Mumbai region
provider "aws"  {
  alias  = "mumbai"
  region = "ap-south-1" 
}

# Provider for Virginia region
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

# Provider for Ohio region
provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
}

# # Configure the default provider for the default region
# provider "aws" {
#   alias  = "default"
#   region = var.default_region
# }