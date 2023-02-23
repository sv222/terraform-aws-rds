output "id" {
  value       = aws_db_instance.this.id
  description = "The ID of the RDS instance"
}

output "endpoint" {
  value       = aws_db_instance.this.endpoint
  description = "The endpoint of the RDS instance"
}

output "username" {
  value       = aws_db_instance.this.username
  description = "The master username for the RDS instance"
}

output "password" {
  value       = aws_db_instance.this.password
  description = "The master password for the RDS instance"
}

output "allocated_storage" {
  value       = aws_db_instance.this.allocated_storage
  description = "The amount of storage allocated for the RDS instance"
}

output "storage_type" {
  value       = aws_db_instance.this.storage_type
  description = "The type of storage used by the RDS instance"
}

output "backup_retention" {
  value       = aws_db_instance.this.backup_retention_days
  description = "The number of days backups are retained for the RDS instance"
}

output "maintenance_window" {
  value       = aws_db_instance.this.maintenance_window
  description = "The maintenance window for the RDS instance"
}
