resource "aws_key_pair" "key_pair" {
  for_each        = var.key_pair_variables
  key_name        = each.value.key_pair_key_name
  key_name_prefix = each.value.key_pair_key_name_prefix
  public_key      = each.value.key_pair_public_key
  tags            = each.value.key_pair_tags
}