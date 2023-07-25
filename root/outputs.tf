output "jenkins_ip" {
  description = "jenkins Instance public ip"
  value       = module.ec2.jenkins_ip
}

output "jenkins_public_dns" {
  description = "jenkins Instance public dns"
  value       = module.ec2.jenkins_public_dns
}
