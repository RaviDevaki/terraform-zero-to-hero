
provider "aws" {
  region = "us-east-1" # specify the region via Code
}

# Fetch security group details
data "aws_security_group" "securitygroupid" {
  name   = "launch-wizard-6"  # Replace with your security group name
}


resource "aws_instance" "mainTestingServer" {
  ami = "ami-0eaf7c3456e7b5b68"
  instance_type = "t2.micro"
  subnet_id = "subnet-001d928ebed7a3bf9"
  key_name = "Layer01"
  security_groups = [data.aws_security_group.securitygroupid.id]
  tags = {
    Name = "mainTestingServer"
  }

}
# Fetch IP address of New EC2 instance, write to ansible host file
