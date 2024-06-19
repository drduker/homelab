terraform {
  required_providers {
    authentik = {
      source  = "goauthentik/authentik"
      version = "2024.4.2"
    }
  }
  cloud {
    organization = "pickhaus"
    workspaces {
      name = "authentik-provisioner"
    }
  }
}
