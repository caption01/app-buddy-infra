resource "aws_instance" "jenkin" {
  ami           = "ami-0574421cc2e9fd6ae" # Amazon Linux AMI
  instance_type = "t4g.nano"
  key_name      = "JenkinsKeyPair" # Create KeyPair manual on aws

  subnet_id              = var.subnet_public_id
  vpc_security_group_ids = [var.aws_security_group_id]

  tags = {
    App  = "Jenkins"
    Name = "Jenkins Instance"
  }
}
