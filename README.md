# Terraform Scripts

This repository contains Terraform scripts for creating networking resources in AWS and OCI.

## AWS

The AWS scripts create the following resources:

*   A VPC with a specified CIDR block.
*   A public subnet.
*   An Internet Gateway.
*   A public route table and associates it with the public subnet.

### Usage

1.  Navigate to the `aws/networking/vpc` directory.
2.  Initialize Terraform: `terraform init`
3.  Review the plan: `terraform plan`
4.  Apply the changes: `terraform apply`

## OCI

The OCI scripts create the following resources:

*   A VCN with a specified CIDR block.
*   A subnet.
*   An Internet Gateway.
*   A route table and associates it with the subnet.
*   A security list that allows SSH ingress and all egress traffic.

### Usage

1.  Navigate to the `oci/networking/vcn` directory.
2.  Initialize Terraform: `terraform init`
3.  Review the plan: `terraform plan`
4.  Apply the changes: `terraform apply`
