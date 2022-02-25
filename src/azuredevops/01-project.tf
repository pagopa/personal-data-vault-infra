

locals {
  azure_devops_org = "pagopaspa"
}

resource "azuredevops_project" "this" {
  name               = var.project_name
  description        = "This is the DevOps project for Private Data Vault infrastructure."
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Basic"
}

resource "azuredevops_project_features" "features" {
  project_id = azuredevops_project.this.id
  features = {
    "boards"       = "disabled"
    "repositories" = "disabled"
    "pipelines"    = "enabled"
    "testplans"    = "disabled"
    "artifacts"    = "disabled"
  }
}