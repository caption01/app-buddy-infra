variable "subnet_public_id" {
  description = "output subnet public id from vpc-subnet module"
  type        = string
  default     = ""
}

variable "aws_security_group_id" {
  description = "output security group id from vpc-subnet module"

  type    = string
  default = ""
}
