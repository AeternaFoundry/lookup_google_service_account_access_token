data "google_service_account_access_token" "service_account_access_token_lookup" {
  for_each = var.service_account_access_token_lookup

  scopes                 = each.value.scopes
  target_service_account = each.value.target_service_account
  delegates              = each.value.delegates
  lifetime               = each.value.lifetime
}

