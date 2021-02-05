resource "aws_db_instance" "rds_instance" {
    username = var.db_username
    password = var.db_password

    publicly_accessible = var.publicly_accessible

    identifier               = var.identifier
    final_snapshot_identifier = var.final_snapshot_identifier

    allocated_storage          = var.database_storage
    storage_type               = var.database_storage_type
    engine                     = var.engine
    engine_version             = var.engine_version
    instance_class             = var.database_instance_class
    db_subnet_group_name       = var.db_subnet_group_name
    multi_az                   = var.multi_az
    port                       = var.port
    vpc_security_group_ids     = var.security_groups
    option_group_name          = var.option_group_name
    parameter_group_name       = var.parameter_group_name
    license_model              = var.license_model
    apply_immediately          = var.apply_immediately
    auto_minor_version_upgrade = var.auto_minor_upgrade
    skip_final_snapshot        = var.skip_final_snapshot
    ca_cert_identifier         = var.ca_cert_identifier
    backup_retention_period    = var.backup_retention_period
    backup_window              = "01:00-02:14"

    tags = var.tags
}
