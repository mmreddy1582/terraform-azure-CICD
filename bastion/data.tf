data "terraform_remote_state" "web" {
    backend = "azurerm" 
       config = {
        resource_group_name  = "mura-remote-state-rg"
        storage_account_name = "muraterraformremotestate"
        container_name       = "muratfstate"
        key                  = "muraweb.tfstate"
    }
}
