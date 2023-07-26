output "jenkins_ip" {
  description = "jenkins Instance public ip"
  value       = aws_instance.jenkin.public_ip
}

output "jenkins_public_dns" {
  description = "jenkins Instance public dns"
  value       = aws_instance.jenkin.public_dns
}

output "ec2_instance_id" {
  description = "ec2 instance id"
  value       = aws_instance.jenkin.id
}
