
provider "aws" {
  region = "us-east-1" # specify the region via Code
}

# Fetch security group details
data "aws_security_group" "securitygroupid" {
  name   = "launch-wizard-6"  # Replace with your security group name
}


resource "aws_instance" "TerraformDockerMaster" {
  ami = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  subnet_id = "subnet-001d928ebed7a3bf9"
  key_name = "Layer01"
  security_groups = [data.aws_security_group.securitygroupid.id]
  tags = {
    Name = "TerraformDockerMaster"
  }
  user_data = file("docker.sh")

}