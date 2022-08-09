# retrieve information about the Default VPC for the selected `aws_region`
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc
data "aws_vpc" "default" {
  default = true
  state   = "available"
}

# see https://registry.terraform.io/modules/ksatirli/hvn-aws/hcp/
module "hvn_aws" {
  source = "../.."

  identifier      = "aws-${var.aws_region}"
  cidr_block      = "172.25.16.0/20"
  peer_account_id = data.aws_vpc.default.owner_id
  peer_vpc_id     = data.aws_vpc.default.id
  region          = var.aws_region
}
