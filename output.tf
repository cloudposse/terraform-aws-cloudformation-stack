output "executor_role_name" {
  value       = "${module.executor_role.arn}"
  description = "Name of the IAM Role in all target accounts for Stack Set operations"
}

output "name" {
  value       = "${join("", aws_cloudformation_stack.default.*.name)}"
  description = "Name of the Stack Set"
}
