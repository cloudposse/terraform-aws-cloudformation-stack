provider "aws" {
  region = var.region
}

module "cloudformation_stack" {
  source        = "../../"
  template_url  = var.template_url
  template_body = var.template_body
  parameters    = var.parameters
  capabilities  = var.capabilities

  context = module.this.context
}
