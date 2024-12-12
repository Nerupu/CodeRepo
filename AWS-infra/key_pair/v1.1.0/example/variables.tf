#KEY PAIR VARIABLES
variable "key_pair_variables" {
  description = "Map of Key pair variables"
  default     = {}
  type = map(object({
    key_pair_key_name        = string
    key_pair_key_name_prefix = string
    key_pair_public_key      = string
    key_pair_tags            = map(string)
  }))
}