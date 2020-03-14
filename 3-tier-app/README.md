# This 3-tier application depends on us-east-1 region VPC

* git clone "repo"
cd repo/VPC
source setenv.sh configurstions/us-east-1/vpc.tfvars
terraform applt -va-file corfiguration/us-east-1/vpc-tfvars


cd repo/3-tier-app
terraform init
terraform apply