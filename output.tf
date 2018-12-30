output "ip_address" {
  value = "${linode_instance.staging-env.ip_address}"
}

output "status" {
  value = "${linode_instance.staging-env.status}"
}
