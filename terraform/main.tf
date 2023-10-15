# TODO GCSのバケットを作成
terraform {
  backend "gcs" {
    bucket  = "task-app-terraform-state"
    prefix  = "/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google" # プロバイダーのソース
      version = "5.1.0" # プロバイダーのバージョン
    }
  }
}

provider "google" {
  project = "causal-analyst-402006" # プロジェクトIDを設定
  region  = "asia-northeast1" # リージョンを設定
  # credentials = file(local.credentials_path) # パスをサービスアカウントキーのJSONファイルに設定
  # zone = "asia-northeast1-a" # ゾーンを設定
}
