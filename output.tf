output "cluster_endpoint" {
  value = google_container_cluster.default.endpoint
}

output "cluster_master_version" {
  value = google_container_cluster.default.master_version
}
