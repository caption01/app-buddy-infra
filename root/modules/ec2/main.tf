resource "aws_instance" "jenkin" {
  ami           = "ami-0acb5e61d5d7b19c8" # Amazon Linux AMI
  instance_type = "t3.micro"
  key_name      = "JenkinsKeyPair" # Create KeyPair manual on aws

  subnet_id              = var.subnet_public_id
  vpc_security_group_ids = [var.aws_security_group_id]

  tags = {
    App  = "Jenkins"
    Name = "Jenkins Instance"
  }
}
