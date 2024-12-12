output "key_pair_output" {
  description = "key pair output values"
  value = { for k, v in aws_key_pair.key_pair : k => {
    id       = v.id
    arn      = v.arn
    key_name = v.key_name
    }
  }
}