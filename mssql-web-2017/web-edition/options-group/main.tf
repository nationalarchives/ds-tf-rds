resource "aws_db_option_group" "sql_options_group" {
    name                     = var.name
    option_group_description = var.option_group_description
    engine_name              = var.engine_name
    major_engine_version     = var.major_engine_version
    tags                     = var.tags

    dynamic option {
        for_each = var.options

        content {
            option_name = option.value.option_name

            dynamic option_settings {
                for_each = option.value.option_settings

                content {
                    name  = option_settings.value.name
                    value = option_settings.value.value
                }
            }
        }
    }
}
