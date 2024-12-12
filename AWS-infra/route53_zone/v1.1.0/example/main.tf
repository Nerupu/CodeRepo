#VPC
module "vpc" {
  source        = "../../../vpc/v1.1.0/"
  vpc_variables = var.vpc_variables
}

#ROUTE53 ZONE
module "route53_zone" {
  source                 = "../"
  route53_zone_variables = var.route53_zone_variables
  depends_on = [module.vpc]
}