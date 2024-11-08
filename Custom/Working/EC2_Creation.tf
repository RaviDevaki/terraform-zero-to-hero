provider "aws" {
  region = "us-east-1" # specify the region via Code
}


# Fetch security group details
data "aws_security_group" "securitygroupid" {
  name   = "launch-wizard-6"  # Replace with your security group name
  #vpc_id = "your-vpc-id"               # Optional: Replace with your VPC ID if needed
}

output "security_group_id" {
  value = data.aws_security_group.securitygroupid.id
}

resource "aws_instance" "TestedServer" {
  ami = "ami-0eaf7c3456e7b5b68"
  instance_type = "t2.micro"
  subnet_id = "subnet-001d928ebed7a3bf9"
  key_name = "Layer01"
  security_groups = [data.aws_security_group.securitygroupid.id]

}
