terraform {
  required_providers {
    radarr = {
      source  = "devopsarr/radarr"
      version = "2.2.0"
    }
  }

  cloud {
    organization = "pickhaus"
    workspaces {
      name = "radarr-provisioner"
    }
  }
}
