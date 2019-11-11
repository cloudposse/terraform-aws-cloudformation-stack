# Define composite variables for resources
module "label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.5.3"
  enabled    = "${var.enabled}"
  namespace  = "${var.namespace}"
  name       = "${var.name}"
  stage      = "${var.stage}"
  delimiter  = "${var.delimiter}"
  attributes = "${var.attributes}"
  tags       = "${var.tags}"
}

resource "aws_cloudformation_stack" "default" {
  count = "${var.enabled == "true" ? 1 : 0}"

  name = "${module.label.id}"
  tags = "${module.label.tags}"

  template_url = "${var.template_url}"
  parameters   = "${var.parameters}"
  capabilities = ["${var.capabilities}"]

  on_failure         = "${var.on_failure}"
  timeout_in_minutes = "${var.timeout_in_minutes}"

  policy_body  = "${var.policy_body}"
}
