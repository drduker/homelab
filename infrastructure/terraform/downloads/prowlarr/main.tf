terraform {
  required_providers {
    prowlarr = {
      source  = "devopsarr/prowlarr"
      version = "2.4.0"
    }
  }

  cloud {
    organization = "pickhaus"
    workspaces {
      name = "prowlarr-provisioner"
    }
  }
}
