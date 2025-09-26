provider "aws" {
  region = var.region
}

module "cloudformation_stack" {
  source           = "../../"
  template_url     = var.template_url
  parameters       = var.parameters
  capabilities     = var.capabilities
  disable_rollback = var.disable_rollback

  context = module.this.context
}
