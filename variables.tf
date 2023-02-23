variable "name" {
  type        = string
  description = "Name of the RDS instance"
}

variable "engine" {
  type        = string
  description = "The name of the database engine to be used"
}

variable "engine_version" {
  type        = string
  description = "The version of the database engine to be used"
}

variable "instance_class" {
  type        = string
  description = "The instance class of the RDS instance"
}

variable "username" {
  type        = string
  description = "The master username for the database"
}

variable "password" {
  type        = string
  description = "The master password for the database"
}

variable "allocated_storage" {
  type        = number
  description = "The amount of storage to be allocated in gigabytes"
  default     = 20
}

variable "storage_type" {
  type        = string
  description = "The type of storage to be used"
  default     = "gp2"
}

variable "backup_retention" {
  type        = number
  description = "The number of days to retain backups for"
  default     = 7
}

variable "maintenance_window" {
  type        = string
  description = "The maintenance window for the RDS instance"
  default     = "Sun:05:00-Sun:06:00"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the RDS instance"
  default     = {}
}