variable "bucket" {
  description = "s3 bucket configuration"

  type = object({
    name = string
  })

  default = {
    name = ""
  }
}
