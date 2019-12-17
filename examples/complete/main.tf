provider "aws" {
  region = var.region
}

module "cloudformation_stack" {
  source       = "../../"
  enabled      = true
  namespace    = var.namespace
  stage        = var.stage
  name         = var.name
  template_url = var.template_url
  parameters   = var.parameters
  capabilities = var.capabilities
}
