output "host" {
  description = "The cluster cluster server host."
  value       = module.cluster.host
}

output "client_key" {
  description = "Base64 encoded private key used by clients to authenticate to the cluster cluster."
  value       = module.cluster.client_key
}

output "client_certificate" {
  description = "Base64 encoded public certificate used by clients to authenticate to the cluster cluster."
  value       = module.cluster.client_certificate
}

output "cluster_ca_certificate" {
  description = "Base64 encoded public CA certificate used as the root of trust for the cluster cluster."
  value       = module.cluster.cluster_ca_certificate
}

output "username" {
  description = "A username used to authenticate to the cluster cluster."
  value       = module.cluster.username
}

output "password" {
  description = "A password or token used to authenticate to the cluster cluster."
  value       = module.cluster.password
}

output "location" {
  description = "The location where the Managed cluster Cluster was created."
  value       = module.cluster.location
}


output "cluster_name" {
  value = module.cluster.cluster_name
}

output "kube_config_raw" {
  description = "Raw cluster config to be used by kubectl and other compatible tools."
  value       = module.cluster.kube_config_raw
}