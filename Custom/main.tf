resource "aws_instance" "TestingServer" {
  ami = "ami-0eaf7c3456e7b5b68"
  instance_type = "t2.micro"
  subnet_id = "subnet-001d928ebed7a3bf9"
  key_name = "Layer01"
  security_groups = [data.aws_security_group.securitygroupid.id]
  tags = {
    Name = "TestingServer"
  }

}
# Fetch IP address of New EC2 instance, write to ansible host file
