terraform {
    backend "azurerm" {
        resource_group_name  = "mura-remote-state-rg"
        storage_account_name = "muraterraformremotestate"
        container_name       = "muratfstate"
        key                  = "murabastion.tfstate"
    }
}