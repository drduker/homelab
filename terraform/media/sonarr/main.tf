terraform {
  required_providers {
    sonarr = {
      source  = "devopsarr/sonarr"
      version = "3.1.1"
    }
  }

  cloud {
    organization = "pickhaus"
    workspaces {
      name = "sonarr-provisioner"
    }
  }
}
