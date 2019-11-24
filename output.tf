output "name" {
  value       = join("", aws_cloudformation_stack.default.*.name)
  description = "Name of the Stack"
}

output "id" {
  value       = join("", aws_cloudformation_stack.default.*.id)
  description = "ID of the Stack"
}

output "outputs" {
  value       = var.enabled ? aws_cloudformation_stack.default[0].outputs : {}
  description = "Outputs of the Stack"
}

