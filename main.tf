# Terraform Settings Block
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "990eb721-14f5-4a32-9154-c213e7d1ba28"
}

# Create Resource Group 
resource "azurerm_resource_group" "rg" {
  location = "eastus"
  name     = "rg-workshop-terraform"
  # tags = {
  # "environment" = "terraform"
  # }
}