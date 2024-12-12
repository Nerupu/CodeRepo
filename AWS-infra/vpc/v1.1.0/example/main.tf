#VPC
module "vpc" {
  source        = "../"
  vpc_variables = var.vpc_variables
}