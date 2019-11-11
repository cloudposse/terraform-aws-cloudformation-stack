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

module "executor_role" {
  source = "git::https://github.com/cloudposse/terraform-aws-iam-role.git?ref=tags/0.4.0"

  enabled            = "${var.enabled}"
  namespace          = "${var.namespace}"
  stage              = "${var.stage}"
  name               = "${var.name}"
  attributes         = "${var.attributes}"
  role_description   = "IAM Cloudfromation executor role"
  policy_description = "IAM Cloudfromation executor policy"

  principals = {
    Service = ["cloudformation.amazonaws.com"]
  }
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
  iam_role_arn = "${module.executor_role.arn}"
}
