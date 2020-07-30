
terraform {
  backend "s3" {}
}

module "s3-bucket" {
  source              = "github.com/larswillrich/terraforf-modules-example//s3-bucket"
  organization        = var.organization
  organizationUnit    = var.organizationUnit
  account             = var.account
  stage               = var.stage
}