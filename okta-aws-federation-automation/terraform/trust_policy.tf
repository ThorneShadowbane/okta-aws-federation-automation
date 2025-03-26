data "aws_iam_policy_document" "okta_assume_role" {
  statement {
    effect = "Allow"
    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::YOUR_AWS_ACCOUNT_ID:saml-provider/Okta"]
    }

    actions = ["sts:AssumeRoleWithSAML"]
    condition {
      test     = "StringEquals"
      variable = "SAML:aud"
      values   = ["https://signin.aws.amazon.com/saml"]
    }
  }
}
