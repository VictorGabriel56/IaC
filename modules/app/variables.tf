### Conexão com o rancher

variable "api_url_rancher" {
    default = ""
}

variable "access_key_rancher" {
    default = ""
}

variable "secret_key_rancher" {
default = ""
}

### Variavies Nome do Environment

variable "environment_name" {
default = ""
}
variable "stack1_name" {
default = ""
}
variable "stack2_name" {
default = ""
}
variable "registry_server" {
default = ""
}
variable "registry_public_value" {
default = ""
}
variable "registry_secrect_value" {
default = ""
}

variable "lb_depends_on" {}
