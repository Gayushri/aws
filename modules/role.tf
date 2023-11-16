data "aws_iam_policy_document" "github_allow" {
 statement {
   effect  = "Allow"
   actions = ["sts:AssumeRoleWithWebIdentity"]
   principals {
     type        = "Federated"
     identifiers = [aws_iam_openid_connect_provider.githubOidc.arn]
   }
   condition {
     test     = "StringLike"
 variable = "token.actions.githubusercontent.com:sub"
     values   = "repo:aws-main/*

   }
 }
}
 resource "aws_iam_role" "github_role" {
 name               = "GithubActionsRole"
 assume_role_policy = data.aws_iam_policy_document.github_allow.json
}
