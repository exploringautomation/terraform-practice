output "instance_id" {
  value = aws_instance.codedeploy_ec2.id
}

output "private_key_path" {
  value = local_file.private_key_pem.filename
}

output "deployment_group_name" {
  value = aws_codedeploy_deployment_group.this.deployment_group_name
}

output "codedeploy_role_arn" {
  value = aws_iam_role.codedeploy_service_role.arn
}

