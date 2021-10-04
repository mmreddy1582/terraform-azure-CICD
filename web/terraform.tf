terraform {
    backend "azurerm" {
        resource_group_name  = "mura-remote-state-rg"
        storage_account_name = "muraterraformremotestat1"
        container_name       = "muratfstate"
        key                  = "muraweb.tfstate"
    }
}
