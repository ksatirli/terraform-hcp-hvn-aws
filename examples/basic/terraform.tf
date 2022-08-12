terraform {
  # see https://www.terraform.io/docs/language/settings/index.html#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/aws/4.25.0/
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.25.0"
    }

    # see https://registry.terraform.io/providers/hashicorp/hcp/0.39.0/
    hcp = {
      source  = "hashicorp/hcp"
      version = ">= 0.39.0"
    }
  }

  # see https://www.terraform.io/docs/language/settings/index.html#specifying-a-required-terraform-version
  required_version = ">= 1.2.0"
}
