variable "bucket" {
  description = "s3 bucket configuration"

  type = object({
    name = string
  })

  default = {
    name = ""
  }
}

variable "tag_app" {
  type        = string
  description = "prpject tag app name"
  default     = ""
}

variable "tag_provider" {
  type        = string
  description = "prpject tag provider name"
  default     = ""
}
