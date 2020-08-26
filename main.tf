terraform {
  backend "remote" {
    organization = "JLOrg"

    workspaces {
      name = "k8s-tf-demo"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
