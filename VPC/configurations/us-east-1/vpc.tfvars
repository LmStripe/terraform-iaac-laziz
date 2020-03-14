# Provided a region for VPC

environment                     =   "virginia"
region                          =   "us-east-1"

#Choose AZs to create subnets

az1                  =       "us-east-1a"
az2                  =       "us-east-1b"
az3                  =       "us-east-1c"



s3_bucket                       =	"terraform-class-laziz"
s3_folder_region                =	"us-east-1"

# This is used for VPC CIDR BLOCK

cidr_block = "10.0.0.0/16"

# This is used for public subnets

cidr_block1_public = "10.0.1.0/24"
cidr_block2_public = "10.0.2.0/24"
cidr_block3_public = "10.0.3.0/24"

# This is used for private subnets

cidr_block1_private = "10.0.101.0/24"
cidr_block2_private = "10.0.102.0/24"
cidr_block3_private = "10.0.103.0/24"



s3_folder_project               =   	"tower"
s3_folder_type                  =   	"tools"
s3_tfstate_file                 =   	"tower.tfstate"

