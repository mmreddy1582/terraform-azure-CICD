data "azurerm_key_vault" "key_vault" {
    name                = "murakeyvaultaia1"
    resource_group_name = "mura-remote-state-rg"
 }

data "azurerm_key_vault_secret" "muraadmin_password" {
    name         = "muraadmin-password"
    key_vault_id = data.azurerm_key_vault.key_vault.id

}
