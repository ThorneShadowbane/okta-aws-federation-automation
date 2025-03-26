# Okta to AWS Federation Automation

This project automates the setup of SAML-based identity federation from Okta to AWS using Terraform. It provisions IAM roles, trust policies, and optional scripts for setting up the Okta application.

## Features

- IAM Role creation with SAML trust policy
- Pre-attached policies (e.g., Admin, ReadOnly)
- Terraform-based, reusable modules
- Optional Okta setup script

## Architecture

![Federation Flow](docs/architecture.png)

## Usage

1. Configure `variables.tf`
2. Run `terraform init && terraform apply`
3. Update the Okta application with the correct metadata
4. Test SSO login to AWS via Okta

## Prerequisites

- Terraform v1.3+
- AWS CLI
- Okta Admin Access
