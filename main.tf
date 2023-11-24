module "sandbox_environment" {
  source              = "./modules/sandbox_env"
  project_name_suffix = "dev1"
  org_id              = "your-org-id"
  billing_account     = "your-billing-account-id"
  region              = "us-central1"
}

