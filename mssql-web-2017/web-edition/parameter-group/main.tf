# ------------------------------------------------------------------------------
# creating parameter group for ms-sql webserver edition
# ------------------------------------------------------------------------------
resource "aws_db_parameter_group" "mssql_pg" {
    name   = var.name
    family = var.family
    tags   = var.tags

    dynamic parameter {
        for_each = var.parameters
        content {
            name         = parameter.value.name
            value        = parameter.value.value
            apply_method = parameter.value.apply_method
        }
    }
}
