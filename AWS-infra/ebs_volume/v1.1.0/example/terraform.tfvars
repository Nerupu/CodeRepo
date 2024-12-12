#Aws Profile
region  = "ap-south-1"
profile = "default"

#EBS VOLUME
ebs_volume_variables = {
  "ebs_volume_1" = {
    ebs_volume_tags = {
      "Name" = "sampleebs000001"
    }
    ebs_volume_availability_zone    = "ap-south-1a"
    ebs_volume_encrypted            = false
    ebs_volume_final_snapshot       = false
    ebs_volume_iops                 = null
    ebs_volume_multi_attach_enabled = false
    ebs_volume_size                 = "30"
    ebs_volume_snapshot_id          = null
    ebs_volume_outpost_arn          = null
    ebs_volume_type                 = "standard"
    ebs_volume_kms_key_id           = null
    ebs_volume_throughput           = null
  }
}