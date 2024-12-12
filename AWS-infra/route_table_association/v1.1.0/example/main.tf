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

#ROUTE TABLE
module "route_table" {
  source                = "../../../route_table/v1.1.0/"
  route_table_variables = var.route_table_variables
  depends_on            = [module.subnet]
}

#ROUTE TABLE ASSOCIATION
module "route_table_association" {
  source                            = "../"
  route_table_association_variables = var.route_table_association_variables
  depends_on                        = [module.route_table]
}