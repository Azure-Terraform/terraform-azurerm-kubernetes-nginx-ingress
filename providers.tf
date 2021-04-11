# Configure terraform and providers
terraform {
  required_version = ">= 0.13.0"
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.1.0"
    }
  }
}

provider "azurerm" {
  version = ">=2.0.0"
  features {}
  subscription_id = "32496c5b-1147-452c-8469-3a11028f8946"
}