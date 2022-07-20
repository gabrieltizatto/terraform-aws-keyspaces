## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_keyspaces_keyspace.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/keyspaces_keyspace) | resource |
| [aws_keyspaces_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/keyspaces_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_clustering_keys"></a> [clustering\_keys](#input\_clustering\_keys) | The columns that are part of the clustering key of the table | `any` | n/a | yes |
| <a name="input_columns"></a> [columns](#input\_columns) | The regular columns of the table | `any` | n/a | yes |
| <a name="input_comment"></a> [comment](#input\_comment) | A description of the table | `string` | `null` | no |
| <a name="input_default_time_to_live"></a> [default\_time\_to\_live](#input\_default\_time\_to\_live) | The default Time to Live setting in seconds for the table | `string` | `null` | no |
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | The encryption option specified for the table. Valid values: AWS\_OWNED\_KMS\_KEY, CUSTOMER\_MANAGED\_KMS\_KEY. The default value is AWS\_OWNED\_KMS\_KEY | `string` | `"AWS_OWNED_KMS_KEY"` | no |
| <a name="input_keyspace_name"></a> [keyspace\_name](#input\_keyspace\_name) | Name of the Keyspace resource | `string` | n/a | yes |
| <a name="input_keyspace_table_name"></a> [keyspace\_table\_name](#input\_keyspace\_table\_name) | Name of the Keyspace table resource | `string` | n/a | yes |
| <a name="input_kms_key_identifier"></a> [kms\_key\_identifier](#input\_kms\_key\_identifier) | The Amazon Resource Name (ARN) of the customer managed KMS key | `string` | `null` | no |
| <a name="input_partition_keys"></a> [partition\_keys](#input\_partition\_keys) | The columns that are part of the partition key of the table | `any` | n/a | yes |
| <a name="input_point_in_time_recovery"></a> [point\_in\_time\_recovery](#input\_point\_in\_time\_recovery) | Specifies if point-in-time recovery is enabled or disabled for the table. Valid values: ENABLED, DISABLED. The default value is DISABLED. | `string` | `"DISABLED"` | no |
| <a name="input_read_capacity_units"></a> [read\_capacity\_units](#input\_read\_capacity\_units) | The throughput capacity specified for read operations defined in read capacity units (RCUs) | `number` | `null` | no |
| <a name="input_static_columns"></a> [static\_columns](#input\_static\_columns) | The columns that have been defined as STATIC. Static columns store values that are shared by all rows in the same partition | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags (key-value pairs) passed to resources. | `map(string)` | `{}` | no |
| <a name="input_throughput_mode"></a> [throughput\_mode](#input\_throughput\_mode) | The read/write throughput capacity mode for a table. Valid values: PAY\_PER\_REQUEST, PROVISIONED. The default value is PAY\_PER\_REQUEST | `string` | `"PAY_PER_REQUEST"` | no |
| <a name="input_ttl_status"></a> [ttl\_status](#input\_ttl\_status) | n/a | `string` | `"ENABLED"` | no |
| <a name="input_write_capacity_units"></a> [write\_capacity\_units](#input\_write\_capacity\_units) | The throughput capacity specified for write operations defined in write capacity units (WCUs) | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_keyspace_arn"></a> [keyspace\_arn](#output\_keyspace\_arn) | n/a |
| <a name="output_keyspace_id"></a> [keyspace\_id](#output\_keyspace\_id) | n/a |
| <a name="output_keyspace_table_arn"></a> [keyspace\_table\_arn](#output\_keyspace\_table\_arn) | n/a |
