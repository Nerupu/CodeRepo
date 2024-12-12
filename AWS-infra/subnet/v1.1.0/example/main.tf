#VPC
module "vpc" {
  source        = "../../../vpc/v1.1.0/"
  vpc_variables = var.vpc_variables
}

#SUBNET
module "subnet" {
  source           = "../"
  subnet_variables = var.subnet_variables
  depends_on       = [module.vpc]
}