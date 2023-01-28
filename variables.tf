variable "provider_token" {
  type = string
  description = "Provider Personal Access Token"
}

variable "public_key_file" {
  type = string
  description = "Secrets folder name"
  default = "secrets/linode.pub"
}
