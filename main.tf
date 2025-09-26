resource "aws_cloudformation_stack" "default" {
  count = module.this.enabled ? 1 : 0

  name = module.this.id
  tags = module.this.tags

  template_url = var.template_url
  parameters   = var.parameters
  capabilities = var.capabilities

  # When disable_rollback is true, don't set on_failure to disable rollback behavior
  on_failure         = var.disable_rollback ? null : var.on_failure
  timeout_in_minutes = var.timeout_in_minutes

  policy_body = var.policy_body
}
