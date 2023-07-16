resource "aws_codecommit_repository" "app_repo" {
  repository_name = var.repo_name
  description     = "This is the frontend app repository for avocado shop"
  default_branch  = "main"

  tags = {
    App      = var.tag_app
    Provider = var.tag_provider
  }
}
