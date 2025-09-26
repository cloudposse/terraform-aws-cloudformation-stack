output "name" {
  value       = one(aws_cloudformation_stack.default[*].name)
  description = "Name of the CloudFormation Stack"
}

output "id" {
  value       = one(aws_cloudformation_stack.default[*].id)
  description = "ID of the CloudFormation Stack"
}

output "outputs" {
  value       = module.this.enabled ? aws_cloudformation_stack.default[0].outputs : {}
  description = "Outputs of the CloudFormation Stack"
}
