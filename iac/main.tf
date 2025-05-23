module "ecr_repo" {
  source = "github.com/Akshay-Durgade/iac-projects/modules/ecr"

  aws_ecr_repository_name                                       = var.aws_ecr_repository_name
  aws_ecr_repository_force_delete                               = var.aws_ecr_repository_force_delete
  aws_ecr_repository_image_scanning_configuration_scan_on_push  = var.aws_ecr_repository_image_scanning_configuration_scan_on_push
  aws_ecr_repository_image_tag_mutability                       = var.aws_ecr_repository_image_tag_mutability
  aws_ecr_repository_encryption_configuration                   = var.aws_ecr_repository_encryption_configuration
}