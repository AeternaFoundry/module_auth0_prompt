output "prompts_id" {
  description = "Map of id values across all prompts, keyed the same as var.prompts except keys with no id are omitted"
  value       = { for k, v in auth0_prompt.prompts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "prompts_identifier_first" {
  description = "Map of identifier_first values across all prompts, keyed the same as var.prompts except keys with no identifier_first are omitted"
  value       = { for k, v in auth0_prompt.prompts : k => v.identifier_first if v.identifier_first != null }
}
output "prompts_universal_login_experience" {
  description = "Map of universal_login_experience values across all prompts, keyed the same as var.prompts except keys with no universal_login_experience are omitted"
  value       = { for k, v in auth0_prompt.prompts : k => v.universal_login_experience if v.universal_login_experience != null && length(v.universal_login_experience) > 0 }
}
output "prompts_webauthn_platform_first_factor" {
  description = "Map of webauthn_platform_first_factor values across all prompts, keyed the same as var.prompts except keys with no webauthn_platform_first_factor are omitted"
  value       = { for k, v in auth0_prompt.prompts : k => v.webauthn_platform_first_factor if v.webauthn_platform_first_factor != null }
}

