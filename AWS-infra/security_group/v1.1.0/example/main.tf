#VPC
module "vpc" {
  source        = "../../../vpc/v1.1.0/"
  vpc_variables = var.vpc_variables
}

#SECURITY GROUP
module "security_group" {
  source                   = "../"
  security_group_variables = var.security_group_variables
  depends_on               = [module.vpc]
}