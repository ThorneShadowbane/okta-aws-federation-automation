resource "aws_iam_role" "okta_federated_role" {
  name = "OktaFederatedAccessRole"

  assume_role_policy = data.aws_iam_policy_document.okta_assume_role.json

  tags = {
    Project = "Okta Federation"
  }
}

resource "aws_iam_policy_attachment" "attach_admin" {
  name       = "attach-admin-policy"
  roles      = [aws_iam_role.okta_federated_role.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
