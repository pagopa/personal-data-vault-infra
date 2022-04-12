# https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html

module "metric_alarms" {
  count   = length(var.dynamodb_alarms)
  source  = "terraform-aws-modules/cloudwatch/aws//modules/metric-alarm"
  version = "~> 3.0"

  actions_enabled     = var.dynamodb_alarms[count.index].actions_enabled
  alarm_name          = var.dynamodb_alarms[count.index].alarm_name
  alarm_description   = var.dynamodb_alarms[count.index].alarm_description
  comparison_operator = var.dynamodb_alarms[count.index].comparison_operator
  evaluation_periods  = var.dynamodb_alarms[count.index].evaluation_periods
  threshold           = var.dynamodb_alarms[count.index].threshold
  threshold_metric_id = var.dynamodb_alarms[count.index].threshold_metric_id
  period              = var.dynamodb_alarms[count.index].period
  unit                = var.dynamodb_alarms[count.index].unit
  datapoints_to_alarm = var.dynamodb_alarms[count.index].datapoints_to_alarm

  namespace    = var.dynamodb_alarms[count.index].namespace
  metric_name  = var.dynamodb_alarms[count.index].metric_name
  statistic    = var.dynamodb_alarms[count.index].statistic
  metric_query = var.dynamodb_alarms[count.index].metric_query

  alarm_actions = [aws_sns_topic.alarms.arn]
}
