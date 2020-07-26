
terraform {
  backend "s3" {}
}

terraform {
  extra_arguments "common_vars" {
    commands = ["plan", "apply", "destroy"]

    arguments = [
      "-var-file=./variable.tfvars",
      "-var-file=../organizationUnit.tfvars",
      "-var-file=../../organization.tfvars"
    ]
  }
}

module "s3-bucket" {
  source              = "github.com/larswillrich/terraforf-modules-example//s3-bucket"
  organization        = var.organization
  organizationUnit    = var.organizationUnit
  account             = "${var.organizationUnit}-${var.stage}"
  stage               = var.stage
}