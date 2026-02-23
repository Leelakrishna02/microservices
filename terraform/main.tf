provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
module "networking" {
  source = "./modules/networking"

  project_id = var.project_id
  region     = var.region
}
module "artifact" {
  source = "./modules/artifact"

  project_id = var.project_id
  region     = var.region
  repo_name  = var.repo_name
}
module "gke" {
  source = "./modules/gke"

  project_id   = var.project_id
  region       = var.region
  cluster_name = var.cluster_name

  network_name      = module.networking.network_name
  subnetwork_name   = module.networking.subnetwork_name
  pods_range_name   = module.networking.pods_range_name
  services_range_name = module.networking.services_range_name
}