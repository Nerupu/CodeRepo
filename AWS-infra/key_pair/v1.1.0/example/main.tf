#KEY PAIR
module "key_pair" {
  source             = "../"
  key_pair_variables = var.key_pair_variables
}