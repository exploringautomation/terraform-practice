variable "project_name" {
  type = string
}

variable "github_repo" {
  type = string
}

variable "connection_arn" {
  type = string
}

variable "service_role_arn" {
  type = string
}

variable "compute_type" {
  type = string
  default = "BUILD_GENERAL1_SMALL"
}

variable "image" {
  type = string
}

variable "environment_variables" {
  type = list(object({
    name  = string
    value = string
  }))
  default = []
}

variable "source_version" {
  type    = string
  default = "main"
}

