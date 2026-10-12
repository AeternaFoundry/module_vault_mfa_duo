resource "vault_mfa_duo" "mfa_duos" {
  for_each = var.mfa_duos

  api_hostname    = each.value.api_hostname
  integration_key = each.value.integration_key
  mount_accessor  = each.value.mount_accessor
  name            = each.value.name
  secret_key      = each.value.secret_key
  namespace       = each.value.namespace
  push_info       = each.value.push_info
  username_format = each.value.username_format
}

