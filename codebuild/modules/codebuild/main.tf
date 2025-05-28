resource "aws_codebuild_project" "this" {
  name          = var.project_name
  service_role  = var.service_role_arn

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = var.compute_type
    image                       = var.image
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"

    dynamic "environment_variable" {
      for_each = var.environment_variables
      content {
        name  = environment_variable.value.name
        value = environment_variable.value.value
      }
    }
  }

  source {
    type            = "GITHUB"
    location        = var.github_repo
    git_clone_depth = 1

    auth {
      type     = "CODECONNECTIONS"
      resource = var.connection_arn
    }
  }

  source_version = var.source_version

  tags = {
    Environment = "dev"
  }
}

