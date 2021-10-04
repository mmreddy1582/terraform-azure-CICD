variable "web_server_location" {
    type = string 
}

variable "web_server_rg" {
    type = string 
}

variable "resource_prefix" {
    type = string 
}

variable "web_server_address_space" {
    type = string 
}

variable "web_server_name" {
    type = string 
}

variable "environment" {
    type = string
}

variable "mura_web_server_count" {
    type = number
}

variable "mura_web_server_subnets" {
    type = map 
}

variable "terraform_script_version" {
    type = string 
}

variable "muraadmin_password" {
    type = string 
}

variable "domain_name_label" {
    type = string
}

