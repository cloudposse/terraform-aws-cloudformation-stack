provider "aws" {
  region = var.region
}

module "cloudformation_stack" {
  source       = "../../"
  template_url = var.template_url
  parameters   = var.parameters
  capabilities = var.capabilities

  context = module.this.context
}
