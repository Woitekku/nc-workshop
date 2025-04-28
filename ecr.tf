resource "aws_ecr_repository" "this" {
  for_each = toset(["client", "server"])

  name                 = format("%s", each.key)
  image_tag_mutability = "IMMUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
  encryption_configuration {
    encryption_type = "AES256"
  }
}