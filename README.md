# Terraform Amazon RDS Module

This Terraform module creates an Amazon RDS instance based on the provided variables.

## Usage

To use this module, include the following code in your Terraform configuration:

```hcl
module "rds" {
  source = "path/to/this/module"

  name           = "my-rds-instance"
  engine         = "postgres"
  engine_version = "11.10"
  instance_class = "db.t2.micro"
  username       = "admin"
  password       = "mysecretpassword"

  allocated_storage  = 20
  storage_type       = "gp2"
  backup_retention   = 7
  maintenance_window = "Mon:00:00-Mon:03:00"
  tags = {
    Environment = "production"
    Application = "myapp"
  }
}
```

## Variables

| Name | Description | Type | Default |
|------|-------------|------|---------|
| `name` | The name of the RDS instance | `string` |  |
| `engine` | The name of the database engine to be used for the RDS instance | `string` |  |
| `engine_version` | The version number of the database engine to be used for the RDS instance | `string` |  |
| `instance_class` | The instance type of the RDS instance | `string` |  |
| `username` | The username for the master database user | `string` |  |
| `password` | The password for the master database user | `string` |  |
| `allocated_storage` | The amount of storage to be allocated for the RDS instance (in GB) | `number` | `20` |
| `storage_type` | The type of storage to be used by the RDS instance | `string` | `"gp2"` |
| `backup_retention` | The number of days backups are retained for the RDS instance | `number` | `7` |
| `maintenance_window` | The maintenance window for the RDS instance | `string` |  |
| `tags` | A map of tags to assign to the RDS instance | `map(string)` | `{}` |

## Outputs

| Name | Description |
|------|-------------|
| `instance_id` | The ID of the RDS instance |
| `endpoint` | The endpoint of the RDS instance |
| `username` | The username for the master database user |
| `password` | The password for the master database user |
| `allocated_storage` | The amount of storage allocated for the RDS instance (in GB) |
| `storage_type` | The type of storage used by the RDS instance |
| `backup_retention` | The number of days backups are retained for the RDS instance |
| `maintenance_window` | The maintenance window for the RDS instance |

## Contributing

Feel free to contribute to this project by submitting pull requests or reporting issues.

## License

This project is licensed under the MIT License.
