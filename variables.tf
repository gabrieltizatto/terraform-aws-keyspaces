variable "keyspace_name" {
  type        = string
  description = "Name of the Keyspace resource"
}

variable "keyspace_table_name" {
  type        = string
  description = "Name of the Keyspace table resource"
}

variable "columns" {
  type        = any
  description = "The regular columns of the table"
}

variable "comment" {
  type        = string
  description = "A description of the table"
  default     = null
}

variable "partition_keys" {
  type        = any
  description = "The columns that are part of the partition key of the table"
}

variable "clustering_keys" {
  type        = any
  description = "The columns that are part of the clustering key of the table"
}

variable "static_columns" {
  type        = any
  description = "The columns that have been defined as STATIC. Static columns store values that are shared by all rows in the same partition"
}

variable "ttl_status" {
  type        = string
  default     = "ENABLED"
}

variable "read_capacity_units" {
  type        = number
  description = "The throughput capacity specified for read operations defined in read capacity units (RCUs)"
  default     = null
}

variable "write_capacity_units" {
  type        = number
  description = "The throughput capacity specified for write operations defined in write capacity units (WCUs)"
  default     = null
}

variable "throughput_mode" {
  type        = string
  description = "The read/write throughput capacity mode for a table. Valid values: PAY_PER_REQUEST, PROVISIONED. The default value is PAY_PER_REQUEST"
  default     = "PAY_PER_REQUEST"
}

variable "default_time_to_live" {
  type        = string
  description = "The default Time to Live setting in seconds for the table"
  default     = null
}

variable "encryption_type" {
  type        = string
  description = "The encryption option specified for the table. Valid values: AWS_OWNED_KMS_KEY, CUSTOMER_MANAGED_KMS_KEY. The default value is AWS_OWNED_KMS_KEY"
  default     = "AWS_OWNED_KMS_KEY"
}

variable "kms_key_identifier" {
  type        = string
  description = "The Amazon Resource Name (ARN) of the customer managed KMS key"
  default     = null
}

variable "point_in_time_recovery" {
  type        = string
  description = "Specifies if point-in-time recovery is enabled or disabled for the table. Valid values: ENABLED, DISABLED. The default value is DISABLED."
  default     = "DISABLED"
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = map(string)
  default     = {}
}
