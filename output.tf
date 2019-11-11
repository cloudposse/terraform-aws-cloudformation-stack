output "administrator_role_arn" {
  value       = "${module.executor_role.arn}"
  description = "Amazon Resource Number (ARN) of the IAM Role in the administrator account"
}

output "executor_role_name" {
  value       = "${var.executor_role_name}"
  description = "Name of the IAM Role in all target accounts for Stack Set operations"
}

output "name" {
  value       = "${join("", aws_cloudformation_stack_set.default.*.name)}"
  description = "Name of the Stack Set"
}
