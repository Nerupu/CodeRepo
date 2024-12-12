#VPC
module "vpc" {
  source        = "../../../vpc/v1.1.0/"
  vpc_variables = var.vpc_variables
}

#SUBNET
module "subnet" {
  source           = "../../../subnet/v1.1.0/"
  subnet_variables = var.subnet_variables
  depends_on       = [module.vpc]
}

#NAT_GATEWAY
module "nat_gateway" {
  source                = "../"
  nat_gateway_variables = var.nat_gateway_variables
  depends_on            = [module.subnet]
}