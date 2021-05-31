## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |


## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | n/a |

## Usage

```hcl
module "datadog_app_services" {
  source        = "linkbynet/sapp-services/datadog"
  customer_name = "mycustomer"
  customer_id   = 1234
  asset_lbnref  = 1234
  asset_name    = mydatabases
}
```

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [datadog_monitor.app_services_http_error_5xx_ratio](https://registry.terraform.io/providers/hashicorp/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.app_services_latency](https://registry.terraform.io/providers/hashicorp/datadog/latest/docs/resources/monitor) | resource |
| [datadog_monitor.app_services_status](https://registry.terraform.io/providers/hashicorp/datadog/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_activated_app_services_http_error_5xx_ratio"></a> [activated\_app\_services\_http\_error\_5xx\_ratio](#input\_activated\_app\_services\_http\_error\_5xx\_ratio) | If the monitor [app\_services\_http\_error\_5xx\_ratio] is activated | `string` | `"true"` | no |
| <a name="input_activated_app_services_latency"></a> [activated\_app\_services\_latency](#input\_activated\_app\_services\_latency) | If the monitor [app\_services\_latency] is activated | `string` | `"false"` | no |
| <a name="input_activated_app_services_status"></a> [activated\_app\_services\_status](#input\_activated\_app\_services\_status) | If the monitor [app\_services\_status] is activated | `string` | `"true"` | no |
| <a name="input_asset_lbnref"></a> [asset\_lbnref](#input\_asset\_lbnref) | Asset lbnref | `any` | n/a | yes |
| <a name="input_asset_name"></a> [asset\_name](#input\_asset\_name) | Asset name | `any` | n/a | yes |
| <a name="input_category"></a> [category](#input\_category) | Category of the monitors | `string` | `"228"` | no |
| <a name="input_category_app_services_http_error_5xx_ratio"></a> [category\_app\_services\_http\_error\_5xx\_ratio](#input\_category\_app\_services\_http\_error\_5xx\_ratio) | Define category for monitor [app\_services\_http\_error\_5xx\_ratio] | `string` | `"228"` | no |
| <a name="input_category_app_services_latency"></a> [category\_app\_services\_latency](#input\_category\_app\_services\_latency) | Define category for monitor [app\_services\_latency] | `string` | `"228"` | no |
| <a name="input_category_app_services_status"></a> [category\_app\_services\_status](#input\_category\_app\_services\_status) | Define category for monitor [app\_services\_status] | `string` | `"228"` | no |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | map of custom tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | ID of the client in Idefix | `any` | n/a | yes |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | Client name as in Idefix | `any` | n/a | yes |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | map of default tags to set on ressources | `map(string)` | `{}` | no |
| <a name="input_escalation_message"></a> [escalation\_message](#input\_escalation\_message) | Default escalation message | `string` | `""` | no |
| <a name="input_escalation_message_app_services_http_error_5xx_ratio"></a> [escalation\_message\_app\_services\_http\_error\_5xx\_ratio](#input\_escalation\_message\_app\_services\_http\_error\_5xx\_ratio) | Escalation message for monitor [app\_services\_http\_error\_5xx\_ratio] | `string` | `""` | no |
| <a name="input_escalation_message_app_services_latency"></a> [escalation\_message\_app\_services\_latency](#input\_escalation\_message\_app\_services\_latency) | Escalation message for monitor [app\_services\_latency] | `string` | `""` | no |
| <a name="input_escalation_message_app_services_status"></a> [escalation\_message\_app\_services\_status](#input\_escalation\_message\_app\_services\_status) | Escalation message for monitor [app\_services\_status] | `string` | `""` | no |
| <a name="input_evaluation_delay"></a> [evaluation\_delay](#input\_evaluation\_delay) | Delay in seconds for the metric evaluation | `number` | `15` | no |
| <a name="input_extra_tags_app_services_http_error_5xx_ratio"></a> [extra\_tags\_app\_services\_http\_error\_5xx\_ratio](#input\_extra\_tags\_app\_services\_http\_error\_5xx\_ratio) | Extra tags for monitor [app\_services\_http\_error\_5xx\_ratio] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_app_services_latency"></a> [extra\_tags\_app\_services\_latency](#input\_extra\_tags\_app\_services\_latency) | Extra tags for monitor [app\_services\_latency] | `list(string)` | `[]` | no |
| <a name="input_extra_tags_app_services_status"></a> [extra\_tags\_app\_services\_status](#input\_extra\_tags\_app\_services\_status) | Extra tags for monitor [app\_services\_status] | `list(string)` | `[]` | no |
| <a name="input_include_tags"></a> [include\_tags](#input\_include\_tags) | Include triggered event tags in title | `bool` | `false` | no |
| <a name="input_irp_app_services_http_error_5xx_ratio"></a> [irp\_app\_services\_http\_error\_5xx\_ratio](#input\_irp\_app\_services\_http\_error\_5xx\_ratio) | Define the IRP for monitor [app\_services\_http\_error\_5xx\_ratio] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_irp_app_services_latency"></a> [irp\_app\_services\_latency](#input\_irp\_app\_services\_latency) | Define the IRP for monitor [app\_services\_latency] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_irp_app_services_status"></a> [irp\_app\_services\_status](#input\_irp\_app\_services\_status) | Define the IRP for monitor [app\_services\_status] | `string` | `"http://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=8983"` | no |
| <a name="input_isprod"></a> [isprod](#input\_isprod) | activate the monitor on production on Sentinel | `string` | `"false"` | no |
| <a name="input_isprod_app_services_http_error_5xx_ratio"></a> [isprod\_app\_services\_http\_error\_5xx\_ratio](#input\_isprod\_app\_services\_http\_error\_5xx\_ratio) | Define whether the monitor [app\_services\_http\_error\_5xx\_ratio] is in production or not | `string` | `""` | no |
| <a name="input_isprod_app_services_latency"></a> [isprod\_app\_services\_latency](#input\_isprod\_app\_services\_latency) | Define whether the monitor [app\_services\_latency] is in production or not | `string` | `""` | no |
| <a name="input_isprod_app_services_status"></a> [isprod\_app\_services\_status](#input\_isprod\_app\_services\_status) | Define whether the monitor [app\_services\_status] is in production or not | `string` | `""` | no |
| <a name="input_message_app_services_http_error_5xx_ratio"></a> [message\_app\_services\_http\_error\_5xx\_ratio](#input\_message\_app\_services\_http\_error\_5xx\_ratio) | Custom message for monitor [app\_services\_http\_error\_5xx\_ratio] | `string` | `"    Verify if the rate of 5xx requests is over the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_app_services_latency"></a> [message\_app\_services\_latency](#input\_message\_app\_services\_latency) | Custom message for monitor [app\_services\_latency] | `string` | `"    Verify if the average latency of app service is over the defined threshold during last check period.\n    Unit: Second.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_message_app_services_status"></a> [message\_app\_services\_status](#input\_message\_app\_services\_status) | Custom message for monitor [app\_services\_status] | `string` | `"    Verify if the service status value is below the defined threshold during last check period.\n    Unit: Percent.\n    See IRP for more informations.\n  \n"` | no |
| <a name="input_new_host_delay"></a> [new\_host\_delay](#input\_new\_host\_delay) | Delay in seconds before monitor new resource | `number` | `300` | no |
| <a name="input_no_data_timeframe_app_services_http_error_5xx_ratio"></a> [no\_data\_timeframe\_app\_services\_http\_error\_5xx\_ratio](#input\_no\_data\_timeframe\_app\_services\_http\_error\_5xx\_ratio) | No data timeframe in minutes for monitor [app\_services\_http\_error\_5xx\_ratio] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_app_services_latency"></a> [no\_data\_timeframe\_app\_services\_latency](#input\_no\_data\_timeframe\_app\_services\_latency) | No data timeframe in minutes for monitor [app\_services\_latency] | `number` | `1440` | no |
| <a name="input_no_data_timeframe_app_services_status"></a> [no\_data\_timeframe\_app\_services\_status](#input\_no\_data\_timeframe\_app\_services\_status) | No data timeframe in minutes for monitor [app\_services\_status] | `number` | `1440` | no |
| <a name="input_notify_app_services_http_error_5xx_ratio"></a> [notify\_app\_services\_http\_error\_5xx\_ratio](#input\_notify\_app\_services\_http\_error\_5xx\_ratio) | Define notification hooks for monitor [notify\_app\_services\_http\_error\_5xx\_ratio] | `string` | `""` | no |
| <a name="input_notify_app_services_latency"></a> [notify\_app\_services\_latency](#input\_notify\_app\_services\_latency) | Define notification hooks for monitor [notify\_app\_services\_latency] | `string` | `""` | no |
| <a name="input_notify_app_services_status"></a> [notify\_app\_services\_status](#input\_notify\_app\_services\_status) | Define notification hooks for monitor [notify\_app\_services\_status] | `string` | `""` | no |
| <a name="input_notify_capacity"></a> [notify\_capacity](#input\_notify\_capacity) | to who notify capacity alerts | `string` | `""` | no |
| <a name="input_notify_no_data_app_services_http_error_5xx_ratio"></a> [notify\_no\_data\_app\_services\_http\_error\_5xx\_ratio](#input\_notify\_no\_data\_app\_services\_http\_error\_5xx\_ratio) | Will raise no data alert if set to true | `bool` | `false` | no |
| <a name="input_notify_no_data_app_services_latency"></a> [notify\_no\_data\_app\_services\_latency](#input\_notify\_no\_data\_app\_services\_latency) | Will raise no data alert if set to true | `bool` | `true` | no |
| <a name="input_notify_no_data_app_services_status"></a> [notify\_no\_data\_app\_services\_status](#input\_notify\_no\_data\_app\_services\_status) | Will raise no data alert if set to true | `bool` | `true` | no |
| <a name="input_notify_to"></a> [notify\_to](#input\_notify\_to) | Define notification hooks | `string` | `"@webhook-SGCProd @monitoring-teams"` | no |
| <a name="input_renotify_interval"></a> [renotify\_interval](#input\_renotify\_interval) | Delay in minutes before monitor is renotified | `number` | `40` | no |
| <a name="input_scope_app_services_http_error_5xx_ratio"></a> [scope\_app\_services\_http\_error\_5xx\_ratio](#input\_scope\_app\_services\_http\_error\_5xx\_ratio) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_scope_app_services_latency"></a> [scope\_app\_services\_latency](#input\_scope\_app\_services\_latency) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_scope_app_services_status"></a> [scope\_app\_services\_status](#input\_scope\_app\_services\_status) | Allow more flexibility to filter the target of the monitor | `string` | `""` | no |
| <a name="input_severity_app_services_http_error_5xx_ratio"></a> [severity\_app\_services\_http\_error\_5xx\_ratio](#input\_severity\_app\_services\_http\_error\_5xx\_ratio) | Define severity for monitor [app\_services\_http\_error\_5xx\_ratio] | `string` | `"3"` | no |
| <a name="input_severity_app_services_latency"></a> [severity\_app\_services\_latency](#input\_severity\_app\_services\_latency) | Define severity for monitor [app\_services\_latency] | `string` | `"3"` | no |
| <a name="input_severity_app_services_status"></a> [severity\_app\_services\_status](#input\_severity\_app\_services\_status) | Define severity for monitor [app\_services\_status] | `string` | `"1"` | no |
| <a name="input_team_in_charge"></a> [team\_in\_charge](#input\_team\_in\_charge) | Define the team in charge | `string` | `"Undefined"` | no |
| <a name="input_template"></a> [template](#input\_template) | Template name | `string` | `"azure-app_services"` | no |
| <a name="input_threshold_critical_app_services_http_error_5xx_ratio"></a> [threshold\_critical\_app\_services\_http\_error\_5xx\_ratio](#input\_threshold\_critical\_app\_services\_http\_error\_5xx\_ratio) | Monitor [app\_services\_http\_error\_5xx\_ratio] critical threshold | `string` | `"40"` | no |
| <a name="input_threshold_critical_app_services_latency"></a> [threshold\_critical\_app\_services\_latency](#input\_threshold\_critical\_app\_services\_latency) | Monitor [app\_services\_latency] critical threshold | `string` | `"180"` | no |
| <a name="input_threshold_critical_app_services_status"></a> [threshold\_critical\_app\_services\_status](#input\_threshold\_critical\_app\_services\_status) | Monitor [app\_services\_status] critical threshold | `string` | `"0.8"` | no |
| <a name="input_threshold_critical_recovery_app_services_http_error_5xx_ratio"></a> [threshold\_critical\_recovery\_app\_services\_http\_error\_5xx\_ratio](#input\_threshold\_critical\_recovery\_app\_services\_http\_error\_5xx\_ratio) | Monitor [app\_services\_http\_error\_5xx\_ratio] critical recovery threshold | `string` | `"10"` | no |
| <a name="input_threshold_critical_recovery_app_services_latency"></a> [threshold\_critical\_recovery\_app\_services\_latency](#input\_threshold\_critical\_recovery\_app\_services\_latency) | Monitor [app\_services\_latency] critical recovery threshold | `string` | `"59"` | no |
| <a name="input_threshold_critical_recovery_app_services_status"></a> [threshold\_critical\_recovery\_app\_services\_status](#input\_threshold\_critical\_recovery\_app\_services\_status) | Monitor [app\_services\_status] critical recovery threshold | `string` | `"0.9"` | no |
| <a name="input_timeframe_app_services_http_error_5xx_ratio"></a> [timeframe\_app\_services\_http\_error\_5xx\_ratio](#input\_timeframe\_app\_services\_http\_error\_5xx\_ratio) | Monitor timeframe for monitor [app\_services\_http\_error\_5xx\_ratio] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_app_services_latency"></a> [timeframe\_app\_services\_latency](#input\_timeframe\_app\_services\_latency) | Monitor timeframe for monitor [app\_services\_latency] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_timeframe_app_services_status"></a> [timeframe\_app\_services\_status](#input\_timeframe\_app\_services\_status) | Monitor timeframe for monitor [app\_services\_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`] | `string` | `"last_1h"` | no |
| <a name="input_tolerance_rate_app_services_http_error_5xx_ratio"></a> [tolerance\_rate\_app\_services\_http\_error\_5xx\_ratio](#input\_tolerance\_rate\_app\_services\_http\_error\_5xx\_ratio) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_tolerance_rate_app_services_latency"></a> [tolerance\_rate\_app\_services\_latency](#input\_tolerance\_rate\_app\_services\_latency) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_tolerance_rate_app_services_status"></a> [tolerance\_rate\_app\_services\_status](#input\_tolerance\_rate\_app\_services\_status) | Give leverage for a mitigation value to limit in case of low connection | `string` | `"1"` | no |
| <a name="input_type_app_services_http_error_5xx_ratio"></a> [type\_app\_services\_http\_error\_5xx\_ratio](#input\_type\_app\_services\_http\_error\_5xx\_ratio) | Type for monitor [app\_services\_http\_error\_5xx\_ratio] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_app_services_latency"></a> [type\_app\_services\_latency](#input\_type\_app\_services\_latency) | Type for monitor [app\_services\_latency] among incident, information | `string` | `"incident"` | no |
| <a name="input_type_app_services_status"></a> [type\_app\_services\_status](#input\_type\_app\_services\_status) | Type for monitor [app\_services\_status] among incident, information | `string` | `"incident"` | no |

## Outputs

No outputs.
