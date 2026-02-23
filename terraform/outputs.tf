output "cluster_name" {
  value = module.gke.cluster_name
}

output "artifact_repository" {
  value = module.artifact.repository_id
}

output "vpc_name" {
  value = module.networking.network_name
}