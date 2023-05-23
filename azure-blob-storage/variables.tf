
variable "resource_group_name" {
  type        = string
  description = "Nazwa grupy zasobów Azure"
  default     = "group"
}

variable "resource_group_location" {
  type        = string
  description = "Lokalizacja grupy zasobów Azure"
  default     = "westeurope"
}

variable "storage_account_name" {
  type        = string
  description = "Nazwa konta magazynu Azure"
  default     = "storage-account"
}

variable "app_service_plan_name" {
  type        = string
  description = "Nazwa planu usługi aplikacji Azure"
  default     = "app-service-plan"
}

variable "function_app_name" {
  type        = string
  description = "Nazwa funkcji usługi aplikacji Linux Azure"
  default     = "function"
}

variable "function_name" {
  type        = string
  description = "Nazwa funkcji"
  default     = "function1"
}
