output "prompts_id" {
  description = "Map of id values across all prompts, keyed the same as var.prompts"
  value       = { for k, v in auth0_prompt.prompts : k => v.id }
}
output "prompts_identifier_first" {
  description = "Map of identifier_first values across all prompts, keyed the same as var.prompts"
  value       = { for k, v in auth0_prompt.prompts : k => v.identifier_first }
}
output "prompts_universal_login_experience" {
  description = "Map of universal_login_experience values across all prompts, keyed the same as var.prompts"
  value       = { for k, v in auth0_prompt.prompts : k => v.universal_login_experience }
}
output "prompts_webauthn_platform_first_factor" {
  description = "Map of webauthn_platform_first_factor values across all prompts, keyed the same as var.prompts"
  value       = { for k, v in auth0_prompt.prompts : k => v.webauthn_platform_first_factor }
}

