output "ebs_volume_output" {
  description = "ebs volume output values"
  value = { for k, v in aws_ebs_volume.ebs_volume : k => {
    id       = v.id
    arn      = v.arn
    tags_all = v.tags_all
    }
  }
}