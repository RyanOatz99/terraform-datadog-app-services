terraform {
  required_version = ">= 0.13"
  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = ">= 2.25.0"
    }
  }
}

resource "datadog_monitor" "app_services_http_error_5xx_ratio" {
  name  = "[app_services service][${var.asset_lbnref}] HTTP 5xx rate over threshold"
  type  = "query alert"
  count = var.activated_app_services_http_error_5xx_ratio == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_app_services_http_error_5xx_ratio,
    var.notify_app_services_http_error_5xx_ratio != "" ? var.notify_app_services_http_error_5xx_ratio : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_app_services_http_error_5xx_ratio != "" ? var.escalation_message_app_services_http_error_5xx_ratio : var.escalation_message,
  )

  query = "avg(${var.timeframe_app_services_http_error_5xx_ratio}):((avg:azure.app_services.http5xx{lbnid:${var.asset_lbnref}}.as_count()) / (avg:azure.app_services.requests{lbnid:${var.asset_lbnref}}.as_count() + ${var.tolerance_rate_app_services_http_error_5xx_ratio})) * 100 > ${var.threshold_critical_app_services_http_error_5xx_ratio}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_app_services_http_error_5xx_ratio
    critical          = var.threshold_critical_app_services_http_error_5xx_ratio
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_app_services_http_error_5xx_ratio
  notify_no_data    = var.notify_no_data_app_services_http_error_5xx_ratio
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:app_services_http_error_5xx_ratio",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_app_services_http_error_5xx_ratio != "" ? var.isprod_app_services_http_error_5xx_ratio : var.isprod,
      )}",
      "severity:${var.severity_app_services_http_error_5xx_ratio}",
      "category:${var.category_app_services_http_error_5xx_ratio}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_app_services_http_error_5xx_ratio}",
      "irp:${var.irp_app_services_http_error_5xx_ratio}",
    ],
    var.extra_tags_app_services_http_error_5xx_ratio,
  )
}

# Create a new Datadog app_services monitor
resource "datadog_monitor" "app_services_latency" {
  name  = "[app_services service][${var.asset_lbnref}] Average response time is over threshold"
  type  = "query alert"
  count = var.activated_app_services_latency == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_app_services_latency,
    var.notify_app_services_latency != "" ? var.notify_app_services_latency : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_app_services_latency != "" ? var.escalation_message_app_services_latency : var.escalation_message,
  )

  query = "avg(${var.timeframe_app_services_latency}):avg:azure.app_services.average_response_time{lbnid:${var.asset_lbnref}} > ${var.threshold_critical_app_services_latency}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_app_services_latency
    critical          = var.threshold_critical_app_services_latency
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_app_services_latency
  notify_no_data    = var.notify_no_data_app_services_latency
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:app_services_latency",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_app_services_latency != "" ? var.isprod_app_services_latency : var.isprod,
      )}",
      "severity:${var.severity_app_services_latency}",
      "category:${var.category_app_services_latency}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_app_services_latency}",
      "irp:${var.irp_app_services_latency}",
    ],
    var.extra_tags_app_services_latency,
  )
}

# Create a new Datadog app_services monitor
resource "datadog_monitor" "app_services_status" {
  name  = "[app_services service][${var.asset_lbnref}] Status threshold below threshold"
  type  = "query alert"
  count = var.activated_app_services_status == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_app_services_status,
    var.notify_app_services_status != "" ? var.notify_app_services_status : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_app_services_status != "" ? var.escalation_message_app_services_status : var.escalation_message,
  )

  query = "avg(${var.timeframe_app_services_status}):avg:azure.app_services.status{lbnid:${var.asset_lbnref}} <= ${var.threshold_critical_app_services_status}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_app_services_status
    critical          = var.threshold_critical_app_services_status
  }

  evaluation_delay  = var.evaluation_delay
  new_host_delay    = var.new_host_delay
  include_tags      = var.include_tags
  no_data_timeframe = var.no_data_timeframe_app_services_status
  notify_no_data    = var.notify_no_data_app_services_status
  renotify_interval = 40
  notify_audit      = true
  timeout_h         = 0
  silenced          = {}

  tags = concat(
    [
      "monitor_resource_name:app_services_status",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_app_services_status != "" ? var.isprod_app_services_status : var.isprod,
      )}",
      "severity:${var.severity_app_services_status}",
      "category:${var.category_app_services_status}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_app_services_status}",
      "irp:${var.irp_app_services_status}",
    ],
    var.extra_tags_app_services_status,
  )
}

