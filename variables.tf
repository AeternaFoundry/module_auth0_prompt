variable "prompts" {
  description = <<EOT
Map of prompts, attributes below
Optional:
    - identifier_first
    - universal_login_experience
    - webauthn_platform_first_factor
EOT

  type = map(object({
    identifier_first               = optional(bool)
    universal_login_experience     = optional(string)
    webauthn_platform_first_factor = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.prompts : (
        v.universal_login_experience == null || (contains(["new", "classic"], v.universal_login_experience))
      )
    ])
    error_message = "must be one of: \"new\", \"classic\""
  }
}

