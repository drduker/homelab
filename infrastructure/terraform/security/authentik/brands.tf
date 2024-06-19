data "authentik_brand" "authentik-default" {
  domain = "authentik-default"
}

resource "authentik_brand" "pickhaus" {
  domain              = var.external_domain
  default             = false
  branding_title      = "pickhaus"
  flow_authentication = authentik_flow.pickhaus-authentication.uuid
  flow_invalidation   = data.authentik_flow.default-invalidation-flow.id
  flow_user_settings  = data.authentik_flow.default-user-settings-flow.id
  branding_logo       = "/media/branding/pickhaus-logo.svg"
  branding_favicon    = "/media/branding/pickhaus-favicon.png"
}
