variable "env" {
  description = "This is the environment where the infrastructure is deployed. (e.g. dev, prod)"
  type        = string
}

variable "region" {
  description = "This is the region where the infrastructure is deployed. (e.g. eu-central-1)"
  type        = string
}

variable "profile" {
  description = "This is the AWS provider to access the accounts."
  type        = string
}
