provider "aws" {
  region = "us-east-1" # specify the region
}

data "aws_vpc" "VPCTerraform" {
  filter {
    name   = "tag:Name"
    values = ["VPCTerraform"] # replace with your VPC name tag
  }
}

output "vpc_id" {
  value = data.aws_vpc.VPCTerraform.id
}
