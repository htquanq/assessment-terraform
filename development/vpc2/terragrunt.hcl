inputs = yamldecode(file("${dirname(find_in_parent_folders())}/../configs/development/vpc2.yaml"))

include "root" {
  # Include terragrunt.hcl from development folder
  path = find_in_parent_folders()
}

terraform {
  source = "${dirname(find_in_parent_folders())}/../modules/vpc"
}

