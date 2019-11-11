output "name" {
  value       = "${join("", aws_cloudformation_stack.default.*.name)}"
  description = "Name of the Stack Set"
}
