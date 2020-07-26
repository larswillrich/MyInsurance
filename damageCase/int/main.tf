
terraform {
  backend "s3" {}

  extra_arguments "common_vars" {
    commands = ["plan", "apply", "destroy"]

    arguments = [
      "-var-file=./variable.tfvars",
      "-var-file=../organizationUnit.tfvars",
      "-var-file=../../organization.tfvars"
    ]
  }
  
  source = "github.com/larswillrich/terraforf-modules-example//s3-bucket"

}