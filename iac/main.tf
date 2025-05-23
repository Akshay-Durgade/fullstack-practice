module "ecr_repo" {
  source = "git::https://github.com/Akshay-Durgade/iac-projects.git//modules/ecr?ref=main"

  aws_ecr_repository_name                                       = var.aws_ecr_repository_name
  aws_ecr_repository_force_delete                               = var.aws_ecr_repository_force_delete
  aws_ecr_repository_image_scanning_configuration_scan_on_push  = var.aws_ecr_repository_image_scanning_configuration_scan_on_push
  aws_ecr_repository_image_tag_mutability                       = var.aws_ecr_repository_image_tag_mutability
  aws_ecr_repository_encryption_configuration                   = var.aws_ecr_repository_encryption_configuration
}

# data "aws_iam_openid_connect_provider" "github" {
#   url = var.oidc_url
# }

# data "aws_iam_policy" "existing" {
#   for_each = toset(var.existing_policies)

#   name = each.value
# }

# module "oidc_trust_relationship" {
#   source                            = "github.com/Akshay-Durgade/iac-projects/modules/iam_role"
#   iam_role_name                     = var.iam_role_name
#   iam_role_assume_role_policy       = data.aws_iam_policy_document.trusted_policy.json
#   iam_role_managed_role_policy_arn  = [ for p in data.aws_iam_policy.existing : p.arn ]
#   depends_on                        = [ data.aws_iam_openid_connect_provider.github, data.aws_iam_policy.existing ]
# }