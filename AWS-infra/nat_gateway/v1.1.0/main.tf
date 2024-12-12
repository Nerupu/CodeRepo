data "aws_vpc" "vpc_id" {
  for_each = var.nat_gateway_variables
  tags     = each.value.nat_gatway_vpc_tags
}
data "aws_subnet" "subnet_id" {
  for_each = var.nat_gateway_variables
  tags     = each.value.nat_gatway_subnet_tags
  vpc_id   = data.aws_vpc.vpc_id[each.key].id
}

resource "aws_nat_gateway" "nat_gateway" {
  for_each          = var.nat_gateway_variables
  tags              = each.value.nat_gateway_tags
  allocation_id     = each.value.nat_gateway_connectivity_type == "public" ? null : each.value.nat_gateway_allocation_id
  connectivity_type = each.value.nat_gateway_connectivity_type
  private_ip        = each.value.nat_gateway_private_ip
  subnet_id         = data.aws_subnet.subnet_id[each.key].id
}