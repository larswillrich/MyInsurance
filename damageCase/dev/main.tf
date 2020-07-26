terraform {
  backend "s3" {
    bucket         = "terraform-state-lars-willrich"
    key            = "larswillrich/myInsuranceExample/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}

module "s3-bucket" {
  source              = "github.com/larswillrich/terraforf-modules-example//s3-bucket"
  organization        = "myinsurance"
  organizationUnit    = "damagecase"
  account             = "myinsurance-dev"
  stage               = "dev"
}