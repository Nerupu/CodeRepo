data "aws_availability_zones" "available" {
  state = "available"
}


data "aws_vpc_ipam_pool" "ipam" {
  filter {
    name   = "description"
    values = ["*-splunk-*${upper(local.suffix)}*"]
  }

  filter {
    name   = "address-family"
    values = ["ipv4"]
  }
}

data "aws_vpc_ipam_pool_cidrs" "cnet" {
  provider     = aws.ipam
  ipam_pool_id = data.aws_vpc_ipam_pool.ipam.id
}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_ec2_transit_gateway" "tgws" {
}

data "aws_iam_policy" "kmspolicy" {
  name = "AWSAccelerator-SessionManagerUserKMS-${data.aws_region.current.name}"
}

data "aws_iam_policy" "session-manager-encrypted-connect" {
  name = "session-manager-encrypted-connect"
}

# data "template_file" "ansible-role" {
#   template = file("${path.module}/policies/ssm-ansible-bin-bucket-access.json")
# }
