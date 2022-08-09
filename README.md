# HashiCorp Cloud Platform: HVN for AWS

This Terraform Module provisions a HashiCorp Virtual Network for use with Amazon Web Services (AWS).

## Table of Contents

- [HashiCorp Cloud Platform: HVN for AWS](#hashicorp-cloud-platform-hvn-for-aws)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Usage](#usage)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

* HashiCorp Cloud Platform (HCP) [Account](https://portal.cloud.hashicorp.com/sign-in)
* Amazon Web Services (AWS) [Account](https://aws.amazon.com/account/)
* Terraform `1.1.x` or newer.

## Usage

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cidr_block | The CIDR range of the HVN. | `string` | n/a | yes |
| identifier | The ID of the HashiCorp Virtual Network (HVN). | `string` | n/a | yes |
| peer_account_id | The account ID of the peer VPC in AWS. | `string` | n/a | yes |
| peer_vpc_id | The ID of the peer VPC in AWS. | `string` | n/a | yes |
| region | AWS Region to deploy HVN in. | `string` | n/a | yes |

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

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/ksatirli/terraform-hcp-hvn-aws/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
