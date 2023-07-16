variable "bucket" {
  description = "s3 bucket configuration"

  type = object({
    name = string
  })

  default = {
    name = ""
  }
}

variable "repo_name" {
  description = "this is app repository name"

  type = string

  default = ""
}

variable "tag_app" {
  type        = string
  description = "prpject tag app name"
  default     = "AvocadoShop"
}

variable "tag_provider" {
  type        = string
  description = "prpject tag provider name"
  default     = "AppBuddy"
}

