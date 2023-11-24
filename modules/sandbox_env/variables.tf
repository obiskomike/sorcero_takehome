variable "project_name_suffix" {
  description = "Suffix for the project name"
  type        = string
}

variable "org_id" {
  description = "The organization ID."
  type        = string
}

variable "billing_account" {
  description = "The ID of the billing account."
  type        = string
}

variable "region" {
  description = "The region to deploy resources into"
  type        = string
  default     = "us-central1"
}
