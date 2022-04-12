env_short   = "u"
environment = "uat"

# Network
enable_nat_gateway = true

# Ecs
ecs_enable_execute_command = true

public_dns_zones = {
  "uat.pdv.pagopa.it" = {
    comment = "Personal data vault (Uat)"

  }
}

apigw_custom_domain_create = true
apigw_api_person_enable    = true
apigw_access_logs_enable   = false

# dynamodb
dynamodb_point_in_time_recovery_enabled = false

dynamodb_alarms = [{
  actions_enabled     = true
  alarm_name          = "dynamodb-account-provisioned-read-capacity"
  alarm_description   = "Account provisioned read capacity greater than 80%"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  datapoints_to_alarm = null
  threshold           = 80
  threshold_metric_id = null
  period              = 300
  unit                = "Percent"

  namespace    = "AWS/DynamoDB"
  metric_name  = "AccountProvisionedReadCapacityUtilization"
  statistic    = "Maximum"
  metric_query = []
  },
  {
    actions_enabled     = true
    alarm_name          = "dynamodb-account-provisioned-write-capacity"
    alarm_description   = "Account provisioned write capacity greater than 80%"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = 1
    datapoints_to_alarm = null
    threshold           = 80
    threshold_metric_id = null
    period              = 300
    unit                = "Percent"

    namespace    = "AWS/DynamoDB"
    metric_name  = "AccountProvisionedWriteCapacityUtilization"
    statistic    = "Maximum"
    metric_query = []
  },
  {
    actions_enabled     = true
    alarm_name          = "dynamodb-max-provisioned-table-read-capacity-utilization"
    alarm_description   = "Account provisioned write capacity greater than 80%"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = 1
    datapoints_to_alarm = null
    threshold           = 80
    threshold_metric_id = null
    period              = 300
    unit                = "Percent"

    namespace    = "AWS/DynamoDB"
    metric_name  = "MaxProvisionedTableReadCapacityUtilization"
    statistic    = "Maximum"
    metric_query = []
  },
  {
    actions_enabled     = true
    alarm_name          = "dynamodb-max-provisioned-table-write-capacity-utilization"
    alarm_description   = "Account provisioned write capacity greater than 80%"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = 1
    datapoints_to_alarm = null
    threshold           = 80
    threshold_metric_id = null
    period              = 300
    unit                = "Percent"

    namespace    = "AWS/DynamoDB"
    metric_name  = "MaxProvisionedTableWriteCapacityUtilization"
    statistic    = "Maximum"
    metric_query = []
  },
  {
    actions_enabled     = true
    alarm_name          = "dynamodb-successful request latency"
    alarm_description   = "Account provisioned write capacity greater than 80%"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = 1
    datapoints_to_alarm = null
    threshold           = 80
    threshold_metric_id = null
    period              = 300
    unit                = "Percent"

    namespace    = "AWS/DynamoDB"
    metric_name  = "SuccessfulRequestLatency"
    statistic    = "Maximum"
    metric_query = []
  },
]

tags = {
  CreatedBy   = "Terraform"
  Environment = "Uat"
  Owner       = "Personal Data Vault"
  Source      = "https://github.com/pagopa/personal-data-vault-infra.git"
  CostCenter  = "TS310 - PAGAMENTI e SERVIZI"
}