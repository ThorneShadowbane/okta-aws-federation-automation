output "role_name" {
  value = aws_iam_role.okta_federated_role.name
}

output "role_arn" {
  value = aws_iam_role.okta_federated_role.arn
}

