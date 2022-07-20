output "keyspace_id" {
  value = aws_keyspaces_keyspace.this.id
}

output "keyspace_arn" {
  value = aws_keyspaces_keyspace.this.arn
}

output "keyspace_table_arn" {
  value = aws_keyspaces_table.this.arn
}

