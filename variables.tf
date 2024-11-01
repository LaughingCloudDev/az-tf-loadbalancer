#Standard Variables
variable "name" {
  description = "Name of Private Endpoint"
  type        = string
}
variable "location" {
  description = "Azure deployment region"
  type        = string
}
variable "resource_group_name" {
  description = "Resource Group to deploy to"
  type        = string
}
variable "tags" {
  type    = map(any)
  default = {}
}

#Resource Specific Variables
variable "pe_connection_name" {
  description = "Resource Group to deploy to"
  type        = string
}

variable "subnet_name" {
  description = "Subnet to deploy public endpoint to"
  type        = string
}

variable "vnet_name" {
  description = "Vnet to deploy public endpoint to"
  type        = string
}

variable "vnet_rg" {
  description = "Resource group containing Vnet to deploy public endpoint to"
  type        = string
}

variable "pc_resource_id" {
  description = "ID of resource this private endpoint will be connected to"
  type        = string
}

variable "subscription_id" {
  description = "ID of subscription to be used for deployment"
  type        = string
  default     = "019c8f82-24fd-4670-9e01-82b24851cd63"
}

variable "psc_subresources" {
  description = "sub resource types that can be used for private endpoint, restrict where required"
  type        = list(any)
  default     = []
}