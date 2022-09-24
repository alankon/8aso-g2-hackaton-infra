terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.37.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {
  project = "hack-aso-grupo-02"
  region  = "us-central1"
  zone    = "us-central1-a"
}