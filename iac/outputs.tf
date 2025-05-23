# aws_ecr_repository
output "aws_ecr_repository_arn" {
  value = module.ecr_repo.aws_ecr_repository_arn
}

output "aws_ecr_repository_registry_id" {
  value = module.ecr_repo.aws_ecr_repository_registry_id
}

output "aws_ecr_repository_registry_repository_url" {
  value = module.ecr_repo.aws_ecr_repository_registry_repository_url
}