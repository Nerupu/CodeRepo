#VPC
module "vpc" {
  source        = "../../../vpc/v1.1.0/"
  vpc_variables = var.vpc_variables
}

#ROUTE TABLE
module "route_table" {
  source                = "../"
  route_table_variables = var.route_table_variables
  depends_on            = [module.vpc]
}