terraform {
  cloud {
    organization = "zambrana"

    workspaces {
      name    = "HT2024-Databricks"
      project = "Hashitalks"
    }
  }
  required_version = "= 1.9.3"
  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = "= 1.34.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.114.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_databricks_workspace" "databricksWokspace" {
  name                = "${var.suffix}${var.workspaceName}"
  resource_group_name = "${var.suffix}${var.rgName}"
}

provider "databricks" {
  host                        = data.azurerm_databricks_workspace.databricksWokspace.workspace_url
  azure_workspace_resource_id = data.azurerm_databricks_workspace.databricksWokspace.id
}
