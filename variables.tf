variable "do_token" {
  type        = string
  description = "Your DigitalOcean API token"
  default     = "ENTER VALUE"
}

variable "ssh_fingerprint" {
  type        = string
  description = "Your SSH key fingerprint"
  default     = "ENTER VALUE"
}

variable "pvt_key" {
  type        = string
  description = "The path to your private SSH key"
  default     = "keys/dokey"
}
