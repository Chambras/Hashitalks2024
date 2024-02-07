terraform {
  cloud {
    organization = "zambrana"

    workspaces {
      name    = "HT2024-Infrastructure"
      project = "Hashitalks"
    }
  }
  required_version = "= 1.7.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.89.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "genericRG" {
  name     = "${var.suffix}${var.rgName}"
  location = var.location
  tags     = var.tags
}
