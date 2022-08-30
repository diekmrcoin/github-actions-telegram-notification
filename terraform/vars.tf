variable "aws_region" {
  description = "AWS region for all resources."
  type        = string
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "github-actions-telegram-notification"
}

variable "project_prefix" {
  description = "Project prefix"
  type        = string
  default     = "gatn"
}
