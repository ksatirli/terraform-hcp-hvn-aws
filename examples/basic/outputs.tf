output "hcp_hvn" {
  description = "Exported Attributes for `hcp_hvn.main`."
  value       = module.hvn_aws.hcp_hvn
}

output "hcp_aws_network_peering" {
  description = "Exported Attributes for `hcp_aws_network_peering.main`."
  value       = module.hvn_aws.hcp_aws_network_peering
}

output "aws_vpc_peering_connection_accepter" {
  description = "Exported Attributes for `aws_vpc_peering_connection_accepter.main`."
  value       = module.hvn_aws.aws_vpc_peering_connection_accepter
}

output "portal_hvn_overview_url" {
  description = "HashiCorp Cloud Platform HVN Overview URL."
  value       = module.hvn_aws.portal_hvn_overview_url
}

output "portal_hvn_peering_url" {
  description = "HashiCorp Cloud Platform HVN Peering URL."
  value       = module.hvn_aws.portal_hvn_peering_url
}

output "portal_hvn_route_table_url" {
  description = "HashiCorp Cloud Platform HVN Route Table URL."
  value       = module.hvn_aws.portal_hvn_route_table_url
}
