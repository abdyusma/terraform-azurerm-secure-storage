variable "existing_resource_group_name" {
  description = "Existing resource group to hosts the Azure storage account."
}

variable "storage_account_name" {
  description = "Unique all-lowercase value with no space"
}

variable "allowed_ip" {
  description = "List of allowed public IP or IP ranges in CIDR Format."
  type        = list(any)
}
