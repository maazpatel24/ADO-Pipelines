terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.102.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sa1_test_eic_MaazPatel"
    storage_account_name = "terraformremotestate24"
    container_name       = "azure-devops-pipeline"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
  }
  skip_provider_registration = false
}
