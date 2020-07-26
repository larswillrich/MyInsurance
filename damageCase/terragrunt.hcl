remote_state {
  backend = "s3"
  config = {
    bucket         = "terraform-state-lars-willrich"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-state-locks"
  }
}
