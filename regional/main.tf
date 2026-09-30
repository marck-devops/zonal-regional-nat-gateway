module "network" {
  source = "./modules/network"
}

module "az1" {
  source = "./modules/az1"

  vpc_id                 = module.network.vpc_id
  availability_zone      = data.aws_availability_zones.available.names[0]
  private_route_table_id = module.network.private_route_table_id

  depends_on = [module.network]
}

module "az2" {
  source = "./modules/az2"

  vpc_id                 = module.network.vpc_id
  availability_zone      = data.aws_availability_zones.available.names[1]
  private_route_table_id = module.network.private_route_table_id

  depends_on = [module.network]
}
