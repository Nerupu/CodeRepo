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

#SECURITY GROUP
module "security_group" {
  source                   = "../../../security_group/v1.1.0/"
  security_group_variables = var.security_group_variables
  depends_on               = [module.vpc]
}

#LOAD BALANCER
module "lb" {
  source                   = "../"
  lb_variables = var.lb_variables
  depends_on               = [module.subnet, module.security_group]
}
