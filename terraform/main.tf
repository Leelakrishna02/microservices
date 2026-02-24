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
  my_cluster = var.cluster_name

  network      = module.networking.network
  subnetwork   = module.networking.subnetwork
  pods_range  = module.networking.pods_range
  services_range = module.networking.services_range
}