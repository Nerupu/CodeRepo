#ROUTE TABLE ASSOCIATION VARIABLES
variable "route_table_association_variables" {
  description = "Map of route table association variables"
  default     = {}
  type = map(object({
    route_table_association_route_table_tags = map(string)
    route_table_association_subnet_tags      = map(string)
    route_table_association_vpc_tags         = map(string)
  }))
}