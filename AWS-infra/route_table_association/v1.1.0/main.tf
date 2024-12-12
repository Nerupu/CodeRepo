data "aws_vpc" "vpc_id" {
  for_each = var.route_table_association_variables
  tags     = each.value.route_table_association_vpc_tags
}

data "aws_subnet" "subnet_id" {
  for_each = var.route_table_association_variables
  tags     = each.value.route_table_association_subnet_tags
  vpc_id   = data.aws_vpc.vpc_id[each.key].id
}

data "aws_route_table" "route_table_id" {
  for_each = var.route_table_association_variables
  tags     = each.value.route_table_association_route_table_tags
  vpc_id   = data.aws_vpc.vpc_id[each.key].id
}


resource "aws_route_table_association" "route_table_association" {
  for_each       = var.route_table_association_variables
  subnet_id      = data.aws_subnet.subnet_id[each.key].id
  route_table_id = data.aws_route_table.route_table_id[each.key].id
}