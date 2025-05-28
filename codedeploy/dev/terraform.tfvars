vpc_cidr              = "10.0.0.0/16"
subnet_cidr           = "10.0.1.0/24"
availability_zone     = "ap-south-1a"
environment           = "dev"
app_name              = "myapp"
deployment_group_name = "myapp-dev"
ami_id                = "ami-04568bde0d686e039"  # Amazon Linux 2 for ap-south-1
instance_type         = "t3.micro"
key_name              = "dev-key"
region                = "ap-south-1"

