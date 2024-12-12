#EBS VOLUME VARIABLES
variable "ebs_volume_variables" {
  description = "Map of Ebs Volume variables"
  default     = {}
  type = map(object({
    ebs_volume_tags                 = map(string)
    ebs_volume_availability_zone    = string
    ebs_volume_encrypted            = bool
    ebs_volume_final_snapshot       = bool
    ebs_volume_iops                 = string
    ebs_volume_multi_attach_enabled = bool
    ebs_volume_size                 = number
    ebs_volume_snapshot_id          = string
    ebs_volume_outpost_arn          = string
    ebs_volume_type                 = string
    ebs_volume_kms_key_id           = string
    ebs_volume_throughput           = string
  }))
}