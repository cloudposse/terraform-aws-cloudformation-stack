output "name" {
  value       = module.cloudformation_stack.name
  description = "Name of the CloudFormation Stack"
}

output "id" {
  value       = module.cloudformation_stack.id
  description = "ID of the CloudFormation Stack"
}

output "outputs" {
  value       = module.cloudformation_stack.outputs
  description = "Outputs of the CloudFormation Stack"
}
