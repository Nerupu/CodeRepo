#EBS VOLUME
module "ebs_volume" {
  source               = "../"
  ebs_volume_variables = var.ebs_volume_variables
}