# Terraform Module Repository

This repository contains reusable and configurable Terraform modules designed to automate the provisioning of various infrastructure resources across AWS. Each module can be used independently or combined to deploy infrastructure such as Virtual Private Clouds (VPCs), subnets, security groups, and more.

## Table of Contents

- [Overview](#overview)
- [Modules](#modules)
  - [VPC Deployment](#vpc-deployment)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

This repository contains various Terraform modules aimed at simplifying the deployment of cloud infrastructure in AWS. The modules are designed to be flexible, with inputs that can be configured to suit various use cases. It includes modules to deploy VPCs, subnets, and other networking resources in a single region, as well as in multiple regions simultaneously with a single `terraform apply`.

## Modules

The repository currently includes the following modules:

- **VPC Deployment**: A module to deploy a VPC with subnets across multiple regions using a single Terraform apply command.


### VPC Deployment

The **VPC Deployment** module is designed to deploy a fully-functional VPC in multiple AWS regions with a single `terraform apply`. This module allows you to configure your VPC, subnets, route tables, and more for multiple regions, simplifying the setup of a multi-region AWS network infrastructure.

[Link to VPC Deployment folder](modules/vpc_deployment)


## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/imrans297/Terraform_Module.git
    cd Terraform_Module
    ```

2. Navigate to the specific module you want to use (e.g., `vpc_deployment`):

    ```bash
    cd modules/vpc_deployment
    ```

3. Initialize Terraform:

    ```bash
    terraform init
    ```

4. Apply the configuration:

    ```bash
    terraform apply
    ```

## Contributing

If you would like to contribute to this repository, please fork it and create a pull request. Contributions are always welcome!
