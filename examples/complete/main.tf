provider "aws" {
  region = var.region
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

module "cloudformation_stack" {
  source        = "../../"
  template_body = file("${path.module}/example.template")
  parameters = merge(var.parameters, {
    StackSuffix = "test-${formatdate("YYYYMMDD-hhmmss", timestamp())}-${random_string.suffix.result}"
  })
  capabilities = var.capabilities

  context = module.this.context
}
