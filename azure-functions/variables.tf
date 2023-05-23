
variable "resource_group_name" {
  type        = string
  description = "Nazwa grupy zasobów Azure"
  default     = "my-resource-group"
}

variable "resource_group_location" {
  type        = string
  description = "Lokalizacja grupy zasobów Azure"
  default     = "westeurope"
}

variable "storage_account_name" {
  type        = string
  description = "Nazwa konta magazynu Azure"
  default     = "my-storage-account"
}

variable "app_service_plan_name" {
  type        = string
  description = "Nazwa planu usługi aplikacji Azure"
  default     = "my-app-service-plan"
}

variable "function_app_name" {
  type        = string
  description = "Nazwa funkcji usługi aplikacji Linux Azure"
  default     = "my-function-app"
}

variable "function_name" {
  type        = string
  description = "Nazwa funkcji"
  default     = "my-function"
}
