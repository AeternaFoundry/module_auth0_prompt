resource "auth0_prompt" "prompts" {
  for_each = var.prompts

  identifier_first               = each.value.identifier_first
  universal_login_experience     = each.value.universal_login_experience
  webauthn_platform_first_factor = each.value.webauthn_platform_first_factor
}

