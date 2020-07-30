
include {
  path = find_in_parent_folders()
}

terraform {

  extra_arguments "common_vars" {
    commands = ["plan", "apply", "destroy"]

    arguments = [
      "-var-file=${get_terragrunt_dir()}/./vars.hcl",
      "-var-file=${get_terragrunt_dir()}/../organizationUnit.hcl",
      "-var-file=${get_terragrunt_dir()}/../../organization.hcl"
    ]
  }
  
  source = "github.com/larswillrich/terraforf-modules-example//s3-bucket"
}
