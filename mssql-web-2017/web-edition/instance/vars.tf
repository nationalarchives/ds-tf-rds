variable "db_username" {}
variable "db_password" {}

variable "publicly_accessible" {}

variable "identifier" {}
variable "final_snapshot_identifier" {}

variable "database_storage" {}
variable "database_storage_type" {}
variable "db_subnet_group_name" {}
variable "engine" {}
variable "engine_version" {}
variable "database_instance_class" {}
variable "port" {}
variable "multi_az" {}
variable "security_groups" {}
variable "option_group_name" {}
variable "parameter_group_name" {}
variable "license_model" {}
variable "apply_immediately" {}
variable "auto_minor_upgrade"{}
variable "ca_cert_identifier" {}
variable "backup_retention_period" {}
variable "skip_final_snapshot" {}

variable "tags" {}
