
module "app" {
  source = "./modules/app"

  lb_depends_on = module.app.id_stack
}

# module "lb" {
#   source = "./modules/lb"

#   lb_depends_on = module.app.id_stack
#   id_env = module.app.id_env 
# }
