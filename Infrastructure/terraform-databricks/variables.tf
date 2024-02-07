variable "suffix" {
  type        = string
  default     = "MZ"
  description = "To be added at the beginning of each resource."
}

variable "rgName" {
  type        = string
  default     = "Hashitalks2024RG"
  description = "Resource Group Name."
}

variable "workspaceName" {
  type        = string
  default     = "DBWorkspaceSingleNode"
  description = "DataBricks Workspace name."
}

variable "tags" {
  type = map(any)
  default = {
    "Environment" = "Dev"
    "Project"     = "HashiTalks2024"
    "BillingCode" = "Internal"
    "Customer"    = "HashiCorp"
  }
  description = "Tags to be applied to all resources."
}
