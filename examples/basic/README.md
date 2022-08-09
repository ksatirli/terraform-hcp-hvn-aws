# Example: `basic`

This is a _basic_ example of the `terraform-hcp-aws-hvn` module.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws_region | The AWS region in which to operate | `string` | `"us-east-1"` | no |

### Outputs

| Name | Description |
|------|-------------|
| aws_vpc_peering_connection_accepter | Exported Attributes for `aws_vpc_peering_connection_accepter.main`. |
| hcp_aws_network_peering | Exported Attributes for `hcp_aws_network_peering.main`. |
| hcp_hvn | Exported Attributes for `hcp_hvn.main`. |
| portal_hvn_overview_url | HashiCorp Cloud Platform HVN Overview URL. |
| portal_hvn_peering_url | HashiCorp Cloud Platform HVN Peering URL. |
| portal_hvn_route_table_url | HashiCorp Cloud Platform HVN Route Table URL. |
<!-- END_TF_DOCS -->
