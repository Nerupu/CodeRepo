resource "aws_ebs_volume" "ebs_volume" {
  for_each             = var.ebs_volume_variables
  tags                 = each.value.ebs_volume_tags
  availability_zone    = each.value.ebs_volume_availability_zone
  encrypted            = each.value.ebs_volume_encrypted
  final_snapshot       = each.value.ebs_volume_final_snapshot
  iops                 = each.value.ebs_volume_iops
  multi_attach_enabled = each.value.ebs_volume_multi_attach_enabled
  size                 = each.value.ebs_volume_size
  snapshot_id          = each.value.ebs_volume_snapshot_id
  outpost_arn          = each.value.ebs_volume_outpost_arn
  type                 = each.value.ebs_volume_type
  kms_key_id           = each.value.ebs_volume_kms_key_id
  throughput           = each.value.ebs_volume_throughput
}