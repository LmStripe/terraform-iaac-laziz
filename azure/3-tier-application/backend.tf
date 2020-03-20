# These resources are to be created before running "terraform init"
terraform {
  backend "azurerm" {
    resource_group_name       = "dev"
    storage_account_name      = "dev1laziz"
    container_name            = "devcontainer"
    access_key                = "LQ8caNzgJIxB9+hYi6ZTqt6f6A4oS3d8va3Idv1NIhDgcpbgztzRkeVT9cpv77P+9B47VuL/r9crRyPQj99qjg=="
    key                       = "dev_terraform.tfstate"
  }
}