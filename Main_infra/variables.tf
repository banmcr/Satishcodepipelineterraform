variable "account_id" {
  type = string
}

variable "name" {
  type = string
  description = "Name of the resource to be created"
  default = "my-aws-resource"
  sensitive = true
  validation {
    condition = can(regex("^[a-z0-9-]+$", var.name))
    error_message = "Name has to be small letter only"
  }
}
