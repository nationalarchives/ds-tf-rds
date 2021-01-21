output "parameter_group_id" {
    value = aws_db_parameter_group.mssql_pg.id
}

output "parameter_group_arn" {
    value = aws_db_parameter_group.mssql_pg.arn
}
