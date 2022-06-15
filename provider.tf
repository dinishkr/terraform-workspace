terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  backend "azurerm" {
        resource_group_name  = "network-rg"
        storage_account_name = "bootdiag54"
        container_name       = "terraform"
        key                  = "tf-workspaces/app.tfstate"
    }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  
  subscription_id   = "7f60296c-ffff-46d1-b231-c71f26606fd8"
  tenant_id         = "6830803c-26bf-474d-8cca-66a44cd2b244"
  client_id         = "89c37b7a-671a-4dfd-8481-707e1b8a42fc"
  client_secret     = "-GV8Q~oeRU9CD6JgECqmqp6SJFs5_N78IG0MbdoP"

}
