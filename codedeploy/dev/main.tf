module "vpc" {
  source            = "../modules/vpc"
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  environment       = var.environment
}

module "codedeploy" {
  source                = "../modules/codedeploy"
  app_name              = var.app_name
  deployment_group_name = var.deployment_group_name
  environment           = var.environment
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  subnet_id             = module.vpc.subnet_id
  security_group_ids    = [module.vpc.security_group_id]
  key_name              = var.key_name
  region                = var.region
}

