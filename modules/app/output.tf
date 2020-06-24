output "id_stack" {
  value = "${rancher_stack.app1.id}"
}
output "id_env" {
  value = "${rancher_environment.environment.id}"
}
