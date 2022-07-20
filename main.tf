resource "aws_keyspaces_keyspace" "this" {
  name = var.keyspace_name
}

resource "aws_keyspaces_table" "this" {
  keyspace_name = aws_keyspaces_keyspace.this.name
  table_name    = var.keyspace_table_name

  schema_definition {
    dynamic "column" {
      for_each = var.columns
      content {
        name     = lookup(column.value, "name")
        type     = lookup(column.value, "type")
      }
    }

    dynamic "partition_key" {
      for_each = var.partition_keys
      content {
        name = lookup(partition_key.value, "name")
      }
    }

    dynamic "clustering_key" {
      for_each = var.clustering_keys
      content {
        name     = lookup(clustering_key.value, "name")
        order_by = lookup(clustering_key.value, "order_by")
      }
    }

    dynamic "static_column" {
      for_each = var.static_columns
      content {
        name     = lookup(static_column.value, "name")
      }
    }

  }

  comment {
    message = var.comment
  }

  capacity_specification {
    read_capacity_units  = var.read_capacity_units
    write_capacity_units = var.write_capacity_units
    throughput_mode      = var.throughput_mode
  }

  encryption_specification {
    type               = var.encryption_type
    kms_key_identifier = var.kms_key_identifier
  }

  point_in_time_recovery {
    status = var.point_in_time_recovery
  }

  ttl {
    status = var.ttl_status
  }

  default_time_to_live = var.default_time_to_live

  tags = var.tags
}

