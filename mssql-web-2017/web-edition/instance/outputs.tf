output "db_host" {
    value = aws_db_instance.rds_instance.endpoint
}

output "db_port" {
    value = aws_db_instance.rds_instance.port
}

output "db_name" {
    value = aws_db_instance.rds_instance.name
}

output "db_instance_identifier" {
    value = aws_db_instance.rds_instance.identifier
}
