provider "azurerm" {
  #version = "~>2.0.0"
  version = "~>1.37.0"
  # features {}
}

# conectando com rancher
provider "rancher" {
  api_url    = var.api_url_rancher
  access_key = var.access_key_rancher
  secret_key = var.secret_key_rancher 
}


# Criando nova enviroment
resource "rancher_environment" "environment" {  
  name = var.environment_name
  description = ""
  orchestration = "cattle"
}


### Adiconando Docker Registry

resource "rancher_registry" "azure_registry" {
  name           = "azure_registry"
  description    = "Azure Registry"
  environment_id = rancher_environment.environment.id
  server_address = var.registry_server
}

### Criando Stack APP

resource "rancher_stack" "app1" {
  environment_id = rancher_environment.environment.id
  name = var.stack1_name
  scope = "user"
  start_on_create = true
  
  docker_compose = <<EOF
  EOF

  rancher_compose = <<EOF
  EOF
}

### Criando Stack LB

resource "rancher_stack" "lb" {
  depends_on = [var.lb_depends_on]
  environment_id = rancher_environment.environment.id
  name = var.stack2_name
  scope = "user"
  start_on_create = true

  docker_compose = <<EOF
  EOF
}