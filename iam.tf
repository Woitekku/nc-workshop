data "aws_iam_policy_document" "team_assume_role" {
  statement {
    sid    = "TeamAssumeRole"
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      type        = "AWS"
      identifiers = var.team_assume_role_principals
    }
  }
}

resource "aws_iam_role" "team" {
  name               = "nc-workshop"
  assume_role_policy = data.aws_iam_policy_document.team_assume_role.json
}


resource "aws_iam_role_policy_attachment" "team" {
  role       = aws_iam_role.team.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}