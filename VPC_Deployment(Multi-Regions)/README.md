# VPC Deployment - Multiple Regions

This module allows you to deploy a fully-functional AWS VPC across multiple regions in a single `terraform apply` operation. It helps automate the process of setting up VPCs, subnets, and associated resources across multiple AWS regions.

## Overview

The module creates the following resources in each specified region:

- VPC
- Public subnets
- Private subnets
- Route tables and routes
- Internet gateway (for public subnets)
- Security groups (if defined)

## Requirements

- Terraform 0.12 or later
- AWS credentials with permissions to create VPCs, subnets, route tables, security groups, etc.

## Inputs

| Name                    | Description                                        | Type            | Default        | Required |
|-------------------------|----------------------------------------------------|-----------------|----------------|----------|
| `regions`               | List of AWS regions to deploy the VPC               | `list(string)`  | `["us-east-1", "us-west-2"]` | yes      |
| `vpc_cidr_block`        | CIDR block for the VPC                            | `string`        | `10.0.0.0/16`  | yes      |
| `public_subnet_cidr`    | List of CIDR blocks for public subnets            | `list(string)`  | `["10.0.1.0/24", "10.0.2.0/24"]` | yes      |
| `private_subnet_cidr`   | List of CIDR blocks for private subnets           | `list(string)`  | `["10.0.3.0/24", "10.0.4.0/24"]` | yes      |

## Example Usage

### Deploy a VPC across two regions

```hcl
module "vpc_deployment" {
  source = "github.com/imrans297/Terraform_Module/modules/vpc_deployment"
  
  regions           = ["us-east-1", "us-east-2",ap-south-1]
  vpc_cidr_block    = "10.0.0.0/16"
  public_subnet_cidr = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
}
