# Define composite variables for resources
module "label" {
  source              = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.16.0"
  enabled             = var.enabled
  namespace           = var.namespace
  environment         = var.environment
  stage               = var.stage
  name                = var.name
  delimiter           = var.delimiter
  attributes          = var.attributes
  tags                = var.tags
  additional_tag_map  = var.additional_tag_map
  label_order         = var.label_order
  regex_replace_chars = var.regex_replace_chars
}

resource "aws_cloudformation_stack" "default" {
  count = var.enabled ? 1 : 0

  name = module.label.id
  tags = module.label.tags

  template_url = var.template_url
  parameters   = var.parameters
  capabilities = var.capabilities

  on_failure         = var.on_failure
  timeout_in_minutes = var.timeout_in_minutes

  policy_body = var.policy_body
}
