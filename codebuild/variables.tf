variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to deploy resources in"
}

variable "aws_profile" {
  type        = string
  default     = "default"
  description = "AWS CLI named profile to use for authentication"
}

variable "connection_arn" {
  description = "ARN of the CodeStar connection to GitHub"
  type        = string
}

