output "subnet_public_id" {
  description = "aws subnet public id"
  value       = aws_subnet.public.id
}

output "aws_security_group_id" {
  description = "aws aws_security_group id"
  value       = aws_security_group.main.id
}
