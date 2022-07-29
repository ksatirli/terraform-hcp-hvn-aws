variable "region" {
  type        = string
  description = "AWS Region to deploy HVN in."

  # To create a peering connection between an HVN and your VPC,
  # `region` must reflect the currently supported HCP region.
  validation {
    condition = contains([
      # Oregon,    # N. Virginia
      "us-west-2", "us-east-1",

      # Ireland,   # London,    # Frankfurt
      "eu-west-1", "eu-west-2", "eu-central-1",

      # Singapore,      # Sydney
      "ap-southeast-1", "ap-southeast-2"
    ], var.region)
    error_message = "`region` must be in a supported region."
  }
}

variable "identifier" {
  type        = string
  description = "The ID of the HashiCorp Virtual Network (HVN)."
}

# see https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/hvn
variable "cidr_block" {
  type        = string
  description = "The CIDR range of the HVN."

  # see https://www.terraform.io/language/values/variables#custom-validation-rules
  validation {
    condition = (
      try(cidrhost(var.cidr_block, 0), null) != "172.31.0.0"
      && try(cidrnetmask(var.cidr_block), null) != "255.255.0.0"
    )

    error_message = "`cidr_block` must not collide with the AWS VPC Default CIDR Block."
  }
}

variable "peer_account_id" {
  type        = string
  description = "The account ID of the peer VPC in AWS."
}

variable "peer_vpc_id" {
  type        = string
  description = "The ID of the peer VPC in AWS."
}
