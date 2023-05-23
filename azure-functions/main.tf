resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "FunctionApp"
  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "example" {
  name                      = var.function_app_name
  location                  = azurerm_resource_group.example.location
  resource_group_name       = azurerm_resource_group.example.name
  app_service_plan_id       = azurerm_app_service_plan.example.id
  storage_account_name      = azurerm_storage_account.example.name
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
}

resource "azurerm_function_app_slot" "example" {
  name                  = "staging"
  resource_group_name   = azurerm_resource_group.example.name
  function_app_id       = azurerm_function_app.example.id
  app_service_plan_id   = azurerm_app_service_plan.example.id
  storage_connection_string = azurerm_storage_account.example.connection_string
}

resource "azurerm_function_app_slot" "example2" {
  name                  = "production"
  resource_group_name   = azurerm_resource_group.example.name
  function_app_id       = azurerm_function_app.example.id
  app_service_plan_id   = azurerm_app_service_plan.example.id
  storage_connection_string = azurerm_storage_account.example.connection_string
}
