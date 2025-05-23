###################
## ECR
###################
aws_ecr_repository_name                                       = "fullstack"
aws_ecr_repository_force_delete                               = true
aws_ecr_repository_image_scanning_configuration_scan_on_push  = false
aws_ecr_repository_image_tag_mutability                       = "IMMUTABLE"
aws_ecr_repository_encryption_configuration                   = {
  encryption_type = "AES256"
  kms_key         = ""
}