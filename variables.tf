variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "namespace" {
  type        = "string"
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  type        = "string"
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "name" {
  default     = "cis"
  description = "Name"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter between `name`, `namespace`, `stage` and `attributes`"
}

variable "attributes" {
  type        = "list"
  description = "Additional attributes (_e.g._ \"1\")"
  default     = []
}

variable "tags" {
  type        = "map"
  description = "Additional tags (_e.g._ map(\"BusinessUnit\",\"ABC\")"
  default     = {}
}

variable "template_url" {
  description = "Amazon S3 bucket URL location of a file containing the CloudFormation template body. Maximum file size: 460,800 bytes"
}

variable "parameters" {
  type        = "map"
  description = "Key-value map of input parameters for the Stack Set template. (_e.g._ map(\"BusinessUnit\",\"ABC\")"
  default     = {}
}

variable "capabilities" {
  type        = "list"
  description = "A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND"
  default     = []
}

variable "on_failure" {
  default     = "ROLLBACK"
  description = "Action to be taken if stack creation fails. This must be one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`"
}

variable "timeout_in_minutes" {
  default     = "30"
  description = "The amount of time that can pass before the stack status becomes `CREATE_FAILED`"
}

variable "policy_body" {
  default     = ""
  description = "Structure containing the stack policy body"
}
