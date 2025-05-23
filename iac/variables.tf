variable "region" {
  type = string
  default = "us-east-1"
}

###################
## ECR
###################
variable "aws_ecr_repository_name" {
  description = "Name of the repository."
  type = string
}

variable "aws_ecr_repository_image_tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE"
  type = string
  default = "MUTABLE"
}

variable "aws_ecr_repository_force_delete" {
  description = "If true, will delete the repository even if it contains images. Defaults to false"
  type = bool
  default = false
}

variable "aws_ecr_repository_encryption_configuration" {
  description = "Encryption configuration for the repository."
  type = object({
    encryption_type = string
    kms_key         = string
  })
}

variable "aws_ecr_repository_image_scanning_configuration_scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
  type = string
}