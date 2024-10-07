variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources."
  type        = string
}

variable "tenant_id" {
  description = "The Azure tenant ID."
  type        = string
}

variable "administrator_login" {
  description = "SQL Server administrator login."
  type        = string
}

variable "administrator_login_password" {
  description = "SQL Server administrator password."
  type        = string
  sensitive   = true
}

variable "app_service_plan_tier" {
  description = "App Service Plan tier."
  type        = string
  default     = "Standard"
}

variable "app_service_plan_size" {
  description = "App Service Plan size."
  type        = string
  default     = "S1"
}
