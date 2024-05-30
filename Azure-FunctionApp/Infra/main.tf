data "azurerm_resource_group" "maaz_rg" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "SA" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = data.azurerm_resource_group.maaz_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    Resource_Owner : "Maaz"
    Delivery_Manager : "Shriram Deshpande"
    Sub_Business_Unit : "PES-IA"
    Business_Unit : "einfochips"
    Project_Name : "Training and learning"
    Create_Date : "28 May 2024"
  }
}

resource "azurerm_service_plan" "Demo-servicePlan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.maaz_rg.location
  os_type             = "Linux"
  sku_name            = "Y1"
  tags = {
    Resource_Owner : "Maaz"
    Delivery_Manager : "Shriram Deshpande"
    Sub_Business_Unit : "PES-IA"
    Business_Unit : "einfochips"
    Project_Name : "Training and learning"
    Create_Date : "28 May 2024"
  }
}

resource "azurerm_linux_function_app" "dotnetfunctionApp" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = data.azurerm_resource_group.maaz_rg.location

  storage_account_name       = azurerm_storage_account.SA.name
  storage_account_access_key = azurerm_storage_account.SA.primary_access_key
  service_plan_id            = azurerm_service_plan.Demo-servicePlan.id 
  
  site_config {
    # dotnet_version = "8.0"
    # linux_fx_version = "DOTNET-ISOLATED|8.0"
    application_stack {
      dotnet_version = "6.0"
      use_dotnet_isolated_runtime = true
    }
  }
  tags = {
    Resource_Owner : "Maaz"
    Delivery_Manager : "Shriram Deshpande"
    Sub_Business_Unit : "PES-IA"
    Business_Unit : "einfochips"
    Project_Name : "Training and learning"
    Create_Date : "28 May 2024"
  }
}
 