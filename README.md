terraform/	Terraform infrastructure code ko organize karta hai.
main.tf	AWS resources define karta hai, jaise VPC, subnets aur security groups.
versions.tf	Required Terraform aur provider versions specify karta hai.
providers.tf	AWS provider configure karta hai, jaise AWS region.
backend.tf	Terraform state ko remote S3 backend mein store karne ki configuration rakhta hai.
.github/workflows/	GitHub Actions workflow files rakhta hai.
terraform.yml	CI/CD automation define karta hai, jaise PR par terraform plan aur approved changes par terraform apply.
Important best practices:
- Separation: Infrastructure code aur CI/CD workflow alag rehte hain.
- Remote state: Team ek shared S3 state use kar sakti hai, with encryption and versioning.
- OIDC: GitHub Actions temporary AWS credentials leta hai, long-lived AWS keys store karne ki zaroorat nahi.
- Controlled deployment: PR par plan review hota hai; apply protected branch ya approval ke baad run hota hai.



terraform-aws-oidc-project/
├── terraform/
│   ├── main.tf
│   ├── versions.tf
│   ├── providers.tf
│   └── backend.tf
└── .github/
    └── workflows/
        └── terraform.yml