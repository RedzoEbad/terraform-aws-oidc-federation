
resource "aws_ssm_parameter" "pipeline_test" {
  name        = "/terraform-oidc-pipeline/test"
  description = "Terraform OIDC pipeline test"
  type        = "String"
  value       = "managed-by-terraform"

  tags = {
    ManagedBy = "Terraform"
    Project   = "OIDC-Pipeline"
  }
}
