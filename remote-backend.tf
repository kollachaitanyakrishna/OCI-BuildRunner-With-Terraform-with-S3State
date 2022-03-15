terraform {
  backend "s3" {
    bucket   = "bucket-terraform-state"
    key      = "demo/terraform.tfstate"
    region   = "ap-mumbai-1"
    endpoint = "https://orasenatdpltintegration01.compat.objectstorage.ap-mumbai-1.oraclecloud.com"
    shared_credentials_file     = "./cred_store"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}