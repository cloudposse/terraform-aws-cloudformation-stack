resource "aws_cloudformation_stack" "default" {
  count = module.this.enabled ? 1 : 0

  name = module.this.id
  tags = module.this.tags

  template_url = var.template_url
  parameters   = var.parameters
  capabilities = var.capabilities

  on_failure         = var.on_failure
  timeout_in_minutes = var.timeout_in_minutes

  policy_body  = var.policy_body
  iam_role_arn = var.iam_role_arn
}
