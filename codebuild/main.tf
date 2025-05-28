
# Create the IAM role for CodeBuild
resource "aws_iam_role" "codebuild_role" {
  name = "CodeBuildServiceRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "codebuild.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

# Attach AWS managed policy to CodeBuild role
resource "aws_iam_role_policy_attachment" "codebuild_attach" {
  role       = aws_iam_role.codebuild_role.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildDeveloperAccess"
}

module "codebuild_project" {
  source = "./modules/codebuild"

  project_name          = "my-github-build"
  github_repo           = "https://github.com/exploringautomation/terraform-practice"
  connection_arn        = var.connection_arn
  service_role_arn      = aws_iam_role.codebuild_role.arn
  compute_type          = "BUILD_GENERAL1_SMALL"
  image                 = "aws/codebuild/standard:7.0"
  environment_variables = []
  source_version        = "main"
}

