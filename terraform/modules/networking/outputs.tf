output "network_name" {
  value = google_compute_network.vpc.name
}

output "subnetwork_name" {
  value = google_compute_subnetwork.subnet.name
}

output "pods_range_name" {
  value = "pods-range"
}

output "services_range_name" {
  value = "services-range"
}