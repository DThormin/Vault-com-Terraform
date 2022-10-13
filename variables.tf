
variable region {
    type = string
    default = "southamerica-east1"
    description = "Google Cloud Region Configuration"
}

variable zone {
    type = string
    default = "southamerica-east1-b"
    description = "Google Cloud Zone configuration"
}

#variable "project" {
#  type        = string
#  description = "Project name"
#}

#variable "environment" {
#  type = string
#}

#variable "network" {
#  type = string
#}

variable db_instance_type {
    type = string
    default = "db-custom-4-15360"
}

#variable "database_name" {
#  type = list
#}

#variable "db_username" {
#  type = list
#}

variable "db_name" {

  sensitive = true
  default = "postgres123456"
  #default = "data.vault_generic_secret.mypass.data[db_name]"
}

variable "db_password" {

  sensitive = true
  default = "gL8Bpajqzo3LhEs5"
}

variable "db_socket" {

  sensitive = true
  default = "10.169.192.3"
}

variable "docs_download" {
  default = "https://automacao-api-gateway-1hmr8gdl.uc.gateway.dev/files/"
}

variable "docs_upload" {
  default = "https://automacao-api-gateway-1hmr8gdl.uc.gateway.dev/files"
}

variable "docs_api_secret" {

  sensitive = true
  default = "AIzaSyB7X3hrwPI4ppJV91IVWR2fDioT-ZqgMUA"
}

variable "docs_api_id" {
  default = "bex-up"
}

variable "bex_bucket_id" {
  default = "bexup-employees-documents-dev"
}

#variável de endereço e acesso do vault
variable "vault_address" {
  default = "http://34.171.0.51:8200"
  #description = "http://34.171.0.51:8200"
  #type = string
}

#variable "access_key" {
#  default="user"
#}

#variable "secret_key" {
#  default = "user"
#}

#variable "vault_token" {
#  default = "hvs.QJYS7r4m79jNXCngnftkBylM"
#}