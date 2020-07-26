
include {
  path = find_in_parent_folders()
}

terraform {

  extra_arguments "common_vars" {
    commands = ["plan", "apply", "destroy"]

    arguments = [
      "-var-file=${get_terragrunt_dir()}/./variable.tfvars",
      "-var-file=${get_terragrunt_dir()}/../organizationUnit.tfvars",
      "-var-file=${get_terragrunt_dir()}/../../organization.tfvars"
    ]
  }
  
  source = "github.com/larswillrich/terraforf-modules-example//s3-bucket"
}
