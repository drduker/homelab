terraform {
  required_providers {
    sonarr = {
      source  = "devopsarr/sonarr"
      version = "3.2.0"
    }
  }

  cloud {
    organization = "pickhaus"
    workspaces {
      name = "sonarr-provisioner"
    }
  }
}
