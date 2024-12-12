#VPC
module "vpc" {
  source        = "../../../vpc/v1.1.0/"
  vpc_variables = var.vpc_variables
}
/* 
#SUBNET
module "subnet" {
  source           = "../../../subnet/v1.1.0/"
  subnet_variables = var.subnet_variables
  depends_on       = [module.vpc]
}

#NAT_GATEWAY
module "nat_gateway" {
  source                = "../../../nat_gateway/v1.1.0/"
  nat_gateway_variables = var.nat_gateway_variables
  depends_on            = [module.subnet]
}

#KEY PAIR
module "key_pair" {
  source             = "../../../key_pair/v1.1.0/"
  key_pair_variables = var.key_pair_variables
}*/

#EC2 INSTANCE
module "instance" {
  source             = "../"
  instance_variables = var.instance_variables
#  depends_on         = [module.subnet, module.key_pair]
}