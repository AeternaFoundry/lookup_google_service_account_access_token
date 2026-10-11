output "service_account_access_token_lookup_id" {
  description = "Map of id values across all service_account_access_token_lookup, keyed the same as var.service_account_access_token_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_service_account_access_token.service_account_access_token_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_account_access_token_lookup_access_token" {
  description = "Map of access_token values across all service_account_access_token_lookup, keyed the same as var.service_account_access_token_lookup except keys with no access_token are omitted"
  value       = { for k, v in data.google_service_account_access_token.service_account_access_token_lookup : k => v.access_token if v.access_token != null && length(v.access_token) > 0 }
  sensitive   = true
}
output "service_account_access_token_lookup_delegates" {
  description = "Map of delegates values across all service_account_access_token_lookup, keyed the same as var.service_account_access_token_lookup except keys with no delegates are omitted"
  value       = { for k, v in data.google_service_account_access_token.service_account_access_token_lookup : k => v.delegates if v.delegates != null && length(v.delegates) > 0 }
}
output "service_account_access_token_lookup_lifetime" {
  description = "Map of lifetime values across all service_account_access_token_lookup, keyed the same as var.service_account_access_token_lookup except keys with no lifetime are omitted"
  value       = { for k, v in data.google_service_account_access_token.service_account_access_token_lookup : k => v.lifetime if v.lifetime != null && length(v.lifetime) > 0 }
}
output "service_account_access_token_lookup_scopes" {
  description = "Map of scopes values across all service_account_access_token_lookup, keyed the same as var.service_account_access_token_lookup except keys with no scopes are omitted"
  value       = { for k, v in data.google_service_account_access_token.service_account_access_token_lookup : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}
output "service_account_access_token_lookup_target_service_account" {
  description = "Map of target_service_account values across all service_account_access_token_lookup, keyed the same as var.service_account_access_token_lookup except keys with no target_service_account are omitted"
  value       = { for k, v in data.google_service_account_access_token.service_account_access_token_lookup : k => v.target_service_account if v.target_service_account != null && length(v.target_service_account) > 0 }
}

