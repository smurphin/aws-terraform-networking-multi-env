# AWS Networking Terraform Module

This Terraform module creates and manages networking components in AWS. Specifically, it creates the following resources:

- VPC
- Subnets
- Internet Gateway
- Route Table
- NAT Gateway

This module can be used to create a new VPC or to manage an existing one.

## Usage

To use this module, you can simply include the following code in your Terraform configuration:

```hcl
module "aws_networking" {
  source = "git@github.com:<your-username>/terraform-aws-networking.git"

  vpc_cidr_block = "10.0.0.0/16"
  public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
}
```
To authenticate to AWS from a local terminal use the follwoing attributes to set credentials (note putting a space before the EXPORT statement keeps the command out of your Bash history) 

```
SET AWS_ACCESS_KEY_ID=*your_access_key_here*
SET AWS_SECRET_ACCESS_KEY=*your_secret_key_here*
```

In this example, we're creating a new VPC with a CIDR block of 10.0.0.0/16. We're also creating two public subnets (10.0.1.0/24 and 10.0.2.0/24) and two private subnets (10.0.3.0/24 and 10.0.4.0/24).

## Inputs

This module accepts the following input variables:

- `vpc_cidr_block`: The CIDR block for the VPC. Defaults to `10.0.0.0/16`.
- `public_subnet_cidr_blocks`: A list of CIDR blocks for the public subnets. Defaults to `["10.0.1.0/24", "10.0.2.0/24"]`.
- `private_subnet_cidr_blocks`: A list of CIDR blocks for the private subnets. Defaults to `["10.0.3.0/24", "10.0.4.0/24"]`.

## Outputs

This module exports the following output variables:

- `vpc_id`: The ID of the VPC.
- `public_subnet_ids`: A list of IDs for the public subnets.
- `private_subnet_ids`: A list of IDs for the private subnets.

## Contributing

Contributions to this module are welcome! If you find a bug or have a feature request, please open an issue on the GitHub repository.

