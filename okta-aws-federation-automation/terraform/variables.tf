variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "role_name" {
  description = "Name of the IAM Role to be created"
  default     = "OktaFederatedAccessRole"
}

variable "policy_arn" {
  description = "ARN of the policy to attach to the IAM Role"
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}

