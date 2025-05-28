variable "vpc_cidr" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "environment" {
  type = string
}

variable "app_name" {
  type = string
}

variable "deployment_group_name" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "region" {
  type = string
}

variable "aws_region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region to deploy resources in"
}

variable "aws_profile" {
  type        = string
  default     = "cozentus-laptop"
  description = "AWS CLI named profile to use for authentication"
}
