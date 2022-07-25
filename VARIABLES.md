## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_applications_compartment_id"></a> [applications\_compartment\_id](#input\_applications\_compartment\_id) | Parent compartment to attach workload compartment to | `string` | n/a | yes |
| <a name="input_current_user_ocid"></a> [current\_user\_ocid](#input\_current\_user\_ocid) | OCID of the current user | `string` | n/a | yes |
| <a name="input_database_subnet_cidr_block"></a> [database\_subnet\_cidr\_block](#input\_database\_subnet\_cidr\_block) | List of Database Subnet CIDR Block (one per workload, maximum of five) | `string` | n/a | yes |
| <a name="input_database_subnet_dns_label"></a> [database\_subnet\_dns\_label](#input\_database\_subnet\_dns\_label) | List of Database Subnet DNS Label (one per workload, maximum of five) | `string` | n/a | yes |
| <a name="input_is_sandbox_mode_enabled"></a> [is\_sandbox\_mode\_enabled](#input\_is\_sandbox\_mode\_enabled) | Do you want to run the stack in Sandbox mode? | `bool` | n/a | yes |
| <a name="input_nat_gateway_id"></a> [nat\_gateway\_id](#input\_nat\_gateway\_id) | Nat Gateway to attach private and database subnet to | `string` | n/a | yes |
| <a name="input_network_compartment_id"></a> [network\_compartment\_id](#input\_network\_compartment\_id) | Network compartment to attach vcn to | `string` | n/a | yes |
| <a name="input_private_subnet_cidr_block"></a> [private\_subnet\_cidr\_block](#input\_private\_subnet\_cidr\_block) | List of Private Subnet CIDR Block (one per workload, maximum of five) | `string` | n/a | yes |
| <a name="input_private_subnet_dns_label"></a> [private\_subnet\_dns\_label](#input\_private\_subnet\_dns\_label) | List of Private Subnet DNS Label (one per workload, maximum of five) | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | the OCI region | `string` | n/a | yes |
| <a name="input_tag_cost_center"></a> [tag\_cost\_center](#input\_tag\_cost\_center) | CostCenter tag value | `string` | n/a | yes |
| <a name="input_tag_geo_location"></a> [tag\_geo\_location](#input\_tag\_geo\_location) | GeoLocation tag value | `string` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | The OCID of tenancy | `string` | n/a | yes |
| <a name="input_vcn_id"></a> [vcn\_id](#input\_vcn\_id) | VCN to attach workload subnet to | `string` | n/a | yes |
| <a name="input_workload_compartment_name"></a> [workload\_compartment\_name](#input\_workload\_compartment\_name) | Name of workload compartment | `string` | n/a | yes |
| <a name="input_api_fingerprint"></a> [api\_fingerprint](#input\_api\_fingerprint) | The fingerprint of API | `string` | `""` | no |
| <a name="input_api_private_key_path"></a> [api\_private\_key\_path](#input\_api\_private\_key\_path) | The local path to the API private key | `string` | `""` | no |
| <a name="input_deploy_global_resources"></a> [deploy\_global\_resources](#input\_deploy\_global\_resources) | Whether to deploy global resources, including tenancy level IAM service and Security service (Cloud Guard, VSS, Flow Log). Choose false if extend your Landing Zone to another region. | `bool` | `true` | no |
| <a name="input_network_compartment_name"></a> [network\_compartment\_name](#input\_network\_compartment\_name) | Name of the top level network compartment | `string` | `"network"` | no |
| <a name="input_workload_admins_group_name"></a> [workload\_admins\_group\_name](#input\_workload\_admins\_group\_name) | The name for the workload administrators group | `string` | `"Workload-Admins"` | no |
| <a name="input_workload_storage_admins_group_name"></a> [workload\_storage\_admins\_group\_name](#input\_workload\_storage\_admins\_group\_name) | The name for the workload storage administrators group | `string` | `"Workload-Storage-Admins"` | no |
| <a name="input_workload_storage_users_group_name"></a> [workload\_storage\_users\_group\_name](#input\_workload\_storage\_users\_group\_name) | The name for the workload storage users group | `string` | `"Workload-Storage-Users"` | no |
| <a name="input_workload_users_group_name"></a> [workload\_users\_group\_name](#input\_workload\_users\_group\_name) | The name for the workload users group | `string` | `"Workload-Users"` | no |

## Outputs

No outputs.
