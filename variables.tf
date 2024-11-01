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

#Resource Type Specific Variables

variable "subnet_name" {
  description = "Subnet to deploy load balancer to"
  type        = string
}

variable "vnet_name" {
  description = "Vnet to deploy load balancer to"
  type        = string
}

variable "vnet_rg" {
  description = "Resource group containing Vnet to deploy loadbalancer to"
  type        = string
}

variable "subscription_id" {
  description = "ID of subscription to be used for deployment"
  type        = string
  default     = "019c8f82-24fd-4670-9e01-82b24851cd63"
}