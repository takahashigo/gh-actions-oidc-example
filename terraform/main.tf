# TODO GCSのバケットを作成
terraform {
  backend "gcs" {
    bucket  = "task-app-terraform-state"
    prefix  = "/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.1.0"
    }
  }
}

provider "google" {
  project = "causal-analyst-402006"
  region  = "asia-northeast1"
}
