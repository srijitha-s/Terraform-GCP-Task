module "project-factory" {
  source                         = "terraform-google-modules/project-factory/google"
  random_project_id              = true
  name                           = var.project
  org_id                         = var.org_id
  lien                           = var.lien
  billing_account                = var.billing_account
}
