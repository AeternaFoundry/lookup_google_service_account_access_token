variable "service_account_access_token_lookup" {
  description = <<EOT
Map of service_account_access_token_lookup, attributes below
Required:
    - scopes
    - target_service_account
Optional:
    - delegates
    - lifetime
EOT

  type = map(object({
    scopes                 = set(string)
    target_service_account = string
    delegates              = optional(set(string))
    lifetime               = optional(string)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

