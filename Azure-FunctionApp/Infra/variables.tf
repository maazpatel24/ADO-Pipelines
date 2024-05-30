variable "resource_group_name" {
  type    = string
  default = "sa1_test_eic_MaazPatel"
}
variable "storage_account_name" {
  type = string
  default = "sa2linuxfuncapp"
}
variable "service_plan_name" {
  type    = string
  default = "demo-app-service-plan"
}
variable "function_app_name" {
  type    = string
  default = "dotnet-function-app"
}
