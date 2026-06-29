module "network" {
  source = "./modules/network"

  project_name = var.project_name
  aws_region   = var.aws_region
  vpc_cidr     = var.vpc_cidr
  subnet1_cidr = var.subnet1_cidr
  subnet2_cidr = var.subnet2_cidr
}

module "database" {
  source = "./modules/database"

  project_name = var.project_name
  environment  = var.environment
}

module "ecr" {
  source = "./modules/ecr"

  project_name = var.project_name
}

module "alb" {
  source = "./modules/alb"

  project_name      = var.project_name
  vpc_id            = module.network.vpc_id
  subnet1_id        = module.network.subnet1_id
  subnet2_id        = module.network.subnet2_id
  security_group_id = module.network.security_group_id
}

module "ecs" {
  source = "./modules/ecs"

  project_name       = var.project_name
  desired_count      = var.desired_count
  subnet1_id         = module.network.subnet1_id
  subnet2_id         = module.network.subnet2_id
  security_group_id  = module.network.security_group_id
  target_group_arn   = module.alb.target_group_arn
  repository_url     = module.ecr.repository_url
  dynamodb_table_arn = module.database.table_arn
}
