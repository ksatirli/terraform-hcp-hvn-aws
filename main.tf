# see https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/hvn
resource "hcp_hvn" "main" {
  hvn_id         = var.identifier
  cloud_provider = "aws"
  region         = var.region
  cidr_block     = var.cidr_block
}

# establish a peering connection between the VPC and HVN
# see https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/aws_network_peering
resource "hcp_aws_network_peering" "main" {
  hvn_id          = hcp_hvn.main.hvn_id
  peer_account_id = var.peer_account_id
  peer_vpc_id     = var.peer_vpc_id
  peer_vpc_region = hcp_hvn.main.region
  peering_id      = hcp_hvn.main.hvn_id
}

# programmatically accept the peering request between the VPC and HVN
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection_accepter
resource "aws_vpc_peering_connection_accepter" "main" {
  vpc_peering_connection_id = hcp_aws_network_peering.main.provider_peering_id
  auto_accept               = true
}
