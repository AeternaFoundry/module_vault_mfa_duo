variable "mfa_duos" {
  description = <<EOT
Map of mfa_duos, attributes below
Required:
    - api_hostname
    - integration_key
    - mount_accessor
    - name
    - secret_key
Optional:
    - namespace
    - push_info
    - username_format
EOT

  type = map(object({
    api_hostname    = string
    integration_key = string
    mount_accessor  = string
    name            = string
    secret_key      = string
    namespace       = optional(string)
    push_info       = optional(string)
    username_format = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

