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

###################
## IAM ROLE
###################
iam_role_name                    = "GitHubOIDC"
iam_role_managed_role_policy_arn = [ 
  "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess",
  "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  ]
