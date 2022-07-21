module "keyspaces" {
  source = "../"

  keyspace_name       = "keyspace_name"
  keyspace_table_name = "keyspace_table_name"
  throughput_mode     = "PAY_PER_REQUEST"

  comment = "Description"

  columns = [ 
    {
      name = "column1"
      type = "text"
    },
    {
      name = "column2"
      type = "blob"
    },
    {
      name = "column3"
      type = "decimal"
    },
    {
      name = "column4"
      type = "bigint"
    }
  ]

  partition_keys = [
    {
      name = "column1"
    },
    {
      name = "column2"
    }
  ]

  clustering_keys = []

  static_columns = []

}