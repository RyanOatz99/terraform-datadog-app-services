# Global variables

variable "template" {
  description = "Template name"
  default     = "azure-app_services"
}

variable "asset_lbnref" {
  description = "Asset lbnref"
}

variable "asset_name" {
  description = "Asset name"
}

variable "default_tags" {
  description = "map of default tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "custom_tags" {
  description = "map of custom tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "isprod" {
  description = "activate the monitor on production on Sentinel"
  default     = "false"
}

variable "notify_to" {
  description = "Define notification hooks"
  default     = "@webhook-SGCProd @monitoring-teams"
}

variable "notify_capacity" {
  description = "to who notify capacity alerts"
  default     = ""
}

variable "category" {
  description = "Category of the monitors"
  default     = "228"
}

variable "customer_name" {
  description = "Client name as in Idefix"
}

variable "customer_id" {
  description = "ID of the client in Idefix"
}

variable "team_in_charge" {
  description = "Define the team in charge"
  default     = "Undefined"
}

variable "evaluation_delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 15
}

variable "new_host_delay" {
  description = "Delay in seconds before monitor new resource"
  default     = 300
}

variable "escalation_message" {
  description = "Default escalation message"
  default     = ""
}

variable "renotify_interval" {
  description = "Delay in minutes before monitor is renotified"
  default     = 40
}

variable "include_tags" {
  description = "Include triggered event tags in title"
  default     = false
}

# Datadog monitors variables

## app_services_http_error_5xx_ratio

variable "activated_app_services_http_error_5xx_ratio" {
  description = "If the monitor [app_services_http_error_5xx_ratio] is activated"
  type        = string
  default     = "true"
}

variable "message_app_services_http_error_5xx_ratio" {
  description = "Custom message for monitor [app_services_http_error_5xx_ratio]"
  type        = string

  default = <<EOM
    Verify if the rate of 5xx requests is over the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_app_services_http_error_5xx_ratio" {
  description = "Escalation message for monitor [app_services_http_error_5xx_ratio]"
  type        = string
  default     = ""
}

variable "notify_app_services_http_error_5xx_ratio" {
  description = "Define notification hooks for monitor [notify_app_services_http_error_5xx_ratio]"
  default     = ""
}

variable "isprod_app_services_http_error_5xx_ratio" {
  description = "Define whether the monitor [app_services_http_error_5xx_ratio] is in production or not"
  default     = ""
}

variable "irp_app_services_http_error_5xx_ratio" {
  description = "Define the IRP for monitor [app_services_http_error_5xx_ratio]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_app_services_http_error_5xx_ratio" {
  description = "Define severity for monitor [app_services_http_error_5xx_ratio]"
  default     = "3"
}

variable "category_app_services_http_error_5xx_ratio" {
  description = "Define category for monitor [app_services_http_error_5xx_ratio]"
  default     = "228"
}

variable "timeframe_app_services_http_error_5xx_ratio" {
  description = "Monitor timeframe for monitor [app_services_http_error_5xx_ratio] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_app_services_http_error_5xx_ratio" {
  description = "Type for monitor [app_services_http_error_5xx_ratio] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_app_services_http_error_5xx_ratio" {
  description = "Extra tags for monitor [app_services_http_error_5xx_ratio]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_app_services_http_error_5xx_ratio" {
  description = "No data timeframe in minutes for monitor [app_services_http_error_5xx_ratio]"
  default     = 1440
}

variable "notify_no_data_app_services_http_error_5xx_ratio" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_app_services_http_error_5xx_ratio" {
  description = "Monitor [app_services_http_error_5xx_ratio] critical threshold"
  default     = "40"
}

variable "threshold_critical_recovery_app_services_http_error_5xx_ratio" {
  description = "Monitor [app_services_http_error_5xx_ratio] critical recovery threshold"
  default     = "10"
}

variable "tolerance_rate_app_services_http_error_5xx_ratio" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_app_services_http_error_5xx_ratio" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

## app_services_status

variable "activated_app_services_status" {
  description = "If the monitor [app_services_status] is activated"
  type        = string
  default     = "true"
}

variable "message_app_services_status" {
  description = "Custom message for monitor [app_services_status]"
  type        = string

  default = <<EOM
    Verify if the service status value is below the defined threshold during last check period.
    Unit: Percent.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_app_services_status" {
  description = "Escalation message for monitor [app_services_status]"
  type        = string
  default     = ""
}

variable "notify_app_services_status" {
  description = "Define notification hooks for monitor [notify_app_services_status]"
  default     = ""
}

variable "isprod_app_services_status" {
  description = "Define whether the monitor [app_services_status] is in production or not"
  default     = ""
}

variable "irp_app_services_status" {
  description = "Define the IRP for monitor [app_services_status]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_app_services_status" {
  description = "Define severity for monitor [app_services_status]"
  default     = "1"
}

variable "category_app_services_status" {
  description = "Define category for monitor [app_services_status]"
  default     = "228"
}

variable "timeframe_app_services_status" {
  description = "Monitor timeframe for monitor [app_services_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_app_services_status" {
  description = "Type for monitor [app_services_status] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_app_services_status" {
  description = "Extra tags for monitor [app_services_status]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_app_services_status" {
  description = "No data timeframe in minutes for monitor [app_services_status]"
  default     = 1440
}

variable "notify_no_data_app_services_status" {
  description = "Will raise no data alert if set to true"
  default     = true
}

variable "threshold_critical_app_services_status" {
  description = "Monitor [app_services_status] critical threshold"
  default     = "0.8"
}

variable "threshold_critical_recovery_app_services_status" {
  description = "Monitor [app_services_status] critical recovery threshold"
  default     = "0.9"
}

variable "tolerance_rate_app_services_status" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_app_services_status" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

## app_services_latency

variable "activated_app_services_latency" {
  description = "If the monitor [app_services_latency] is activated"
  type        = string
  default     = "false"
}

variable "message_app_services_latency" {
  description = "Custom message for monitor [app_services_latency]"
  type        = string

  default = <<EOM
    Verify if the average latency of app service is over the defined threshold during last check period.
    Unit: Second.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_app_services_latency" {
  description = "Escalation message for monitor [app_services_latency]"
  type        = string
  default     = ""
}

variable "notify_app_services_latency" {
  description = "Define notification hooks for monitor [notify_app_services_latency]"
  default     = ""
}

variable "isprod_app_services_latency" {
  description = "Define whether the monitor [app_services_latency] is in production or not"
  default     = ""
}

variable "irp_app_services_latency" {
  description = "Define the IRP for monitor [app_services_latency]"
  default     = "http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"
}

variable "severity_app_services_latency" {
  description = "Define severity for monitor [app_services_latency]"
  default     = "3"
}

variable "category_app_services_latency" {
  description = "Define category for monitor [app_services_latency]"
  default     = "228"
}

variable "timeframe_app_services_latency" {
  description = "Monitor timeframe for monitor [app_services_latency] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_1h"
}

variable "type_app_services_latency" {
  description = "Type for monitor [app_services_latency] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_app_services_latency" {
  description = "Extra tags for monitor [app_services_latency]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_app_services_latency" {
  description = "No data timeframe in minutes for monitor [app_services_latency]"
  default     = 1440
}

variable "notify_no_data_app_services_latency" {
  description = "Will raise no data alert if set to true"
  default     = true
}

variable "threshold_critical_app_services_latency" {
  description = "Monitor [app_services_latency] critical threshold"
  default     = "180"
}

variable "threshold_critical_recovery_app_services_latency" {
  description = "Monitor [app_services_latency] critical recovery threshold"
  default     = "59"
}

variable "tolerance_rate_app_services_latency" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "1"
}

variable "scope_app_services_latency" {
  description = "Allow more flexibility to filter the target of the monitor"
  default     = ""
}

##
