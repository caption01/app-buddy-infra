variable "subnet_public_id" {
  description = "output subnet public id from vpc-subnet module"
  type        = string
  default     = ""
}

variable "subnet_private_id" {
  description = "output subnet private id from vpc-subnet module"
  type        = string
  default     = ""
}

variable "aws_security_group_id" {
  description = "output security group id from vpc-subnet module"

  type    = string
  default = ""
}

variable "vpc_id" {
  description = "output vpc id  from vpc-subnet module"

  type    = string
  default = ""
}

variable "ec2_instance_id" {
  description = "output ec2 instance id  from ec2 module"

  type    = string
  default = ""
}
