terraform {
  backend "s3" {
    bucket       = "my-terraform-oidc-setup-101"
    key          = "app/terraform.tfstate"
    region       = "ap-southeast-1"
    encrypt      = true
    kms_key_id   = "arn:aws:kms:ap-southeast-1:181259112888:key/52a65afa-5bb1-49a5-b3ee-c5d9d58ed709"
    use_lockfile = true
  }
}