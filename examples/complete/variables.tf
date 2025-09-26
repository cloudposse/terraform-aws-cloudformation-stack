variable "region" {
  type        = string
  description = "AWS Region"
}

variable "template_url" {
  type        = string
  default     = null
  description = "Amazon S3 bucket URL location of a file containing the CloudFormation template body. Maximum file size: 460,800 bytes"
}

variable "template_body" {
  type        = string
  default     = null
  description = "Structure containing the CloudFormation template body. Maximum size: 51,200 bytes"
}

variable "parameters" {
  type        = map(string)
  description = "Key-value map of input parameters for the Stack Set template. (_e.g._ map(\"BusinessUnit\",\"ABC\")"
  default     = {}
}

variable "capabilities" {
  type        = list(string)
  description = "A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND"
  default     = []
}