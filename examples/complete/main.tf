provider "aws" {
  region = var.region
}

module "cloudformation_stack" {
  source        = "../../"
  template_body = file("${path.module}/example.template")
  parameters    = var.parameters
  capabilities  = var.capabilities

  context = module.this.context
}
