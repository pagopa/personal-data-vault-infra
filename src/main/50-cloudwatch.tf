resource "aws_cloudwatch_query_definition" "apigw_429" {
  name = "ApiGateway/429"

  log_group_names = [
    local.user_registry_log_group_name
  ]

  query_string = file("./cloudwatch-query/apigw-429.sql")
}