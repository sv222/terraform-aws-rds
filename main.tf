resource "aws_db_instance" "this" {
  identifier            = var.name
  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  allocated_storage     = var.allocated_storage
  storage_type          = var.storage_type
  username              = var.username
  password              = var.password
  backup_retention_days = var.backup_retention
  maintenance_window    = var.maintenance_window
  tags                  = var.tags
}