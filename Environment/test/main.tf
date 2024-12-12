/* 
module "vpc" {
  source = "../../aws-terraform/vpc/v1.1.0"
  vpc_variables = var.vpc_variables
}

module "route53_zone" {
  source                 = "../../aws-terraform/route53_zone/v1.1.0"
  route53_zone_variables = var.route53_zone_variables
  depends_on = [module.vpc]
}
*/

module "security_group" {
  source                   = "../../aws-terraform/security_group/v1.1.0"
  security_group_variables = var.security_group_variables
  # depends_on               = [module.vpc]
}
/*
module "subnet" {
  source = "../../aws-terraform/subnet/v1.1.0"
  subnet_variables = var.subnet_variables
  depends_on = [ module.vpc ]
}

module "route_table" {
  source                = "../../aws-terraform/route_table/v1.1.0"
  route_table_variables = var.route_table_variables
  depends_on            = [module.vpc]
}

module "route_table_association" {
  source                            = "../../aws-terraform/route_table_association/v1.1.0"
  route_table_association_variables = var.route_table_association_variables
  depends_on                        = [module.route_table, module.subnet]
}

module "nat_gateway" {
  source                = "../../aws-terraform/nat_gateway/v1.1.0"
  nat_gateway_variables = var.nat_gateway_variables
  depends_on            = [module.subnet]
}

module "key_pair" {
  source             = "../../aws-terraform/key_pair/v1.1.0"
  key_pair_variables = var.key_pair_variables
}
*/
module "instance" {
  source             = "../../aws-terraform/ec2_instance/v1.1.0"
  instance_variables = var.instance_variables
  depends_on         = [module.security_group]
}
/*
module "lb" {
  source                   = "../../aws-terraform/aws_lb/v1.1.0"
  lb_variables = var.lb_variables
  depends_on               = [module.subnet, module.security_group]
}
*/