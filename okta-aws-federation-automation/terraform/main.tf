provider "aws" {
  region = var.aws_region
}

resource "aws_iam_role" "okta_federated_role" {
  name = var.role_name

  assume_role_policy = data.aws_iam_policy_document.okta_assume_role.json

  tags = {
    Project = "Okta Federation"
  }
}

resource "aws_iam_policy_attachment" "attach_admin_policy" {
  name       = "AttachAdminPolicy"
  roles      = [aws_iam_role.okta_federated_role.name]
  policy_arn = var.policy_arn
}

