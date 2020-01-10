variable "name_tag" {
  description = "The name used to identify this VPC endpoint."
  type        = string
}

variable "appid_tag" {
  description = "The primary AppID that will use this resourece."
  type        = string
}

variable "env_tag" {
  description = "Environment(s) that this parameter will be referenced."
  type        = string
}

variable "function_tag" {
  description = "Function or purpose of the resourece."
  type        = string
}

variable "awsaccount_tag" {
  description = "Account Name"
  type        = string
}

variable "createdby_tag" {
  description = "e-number@lpsvcs.com"
  type        = string
}

variable "extended_tags" {
  description = "A mapping of tags to assign to the resource"
  type        = "map"
  default     = {}
}

variable "vpc_id" {
  description = "The ID of the VPC in which the endpoint will be used."
  type        = string
}

variable "service_name" {
  description = "The service name, in the form com.amazonaws.region.service for AWS services."
  type        = string
}

variable "vpc_endpoint_type" {
  description = "The VPC endpoint type, Gateway or Interface."
  type        = string
}

variable "policy" {
  description = "A policy to attach to the endpoint that controls access to the service. Defaults to full access."
  default     = ""
  type        = string
}

variable "private_dns_enabled" {
  type        = bool
  description = "enable private DNS. Default false"
  default     = false
}

variable subnet_ids {
  description = "The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type Interface."
  default     = []
  type        = list(string)
}

variable security_group_ids {
  description = "The ID of one or more security groups to associate with the network interface. Required for endpoints of type Interface."
  default     = []
  type        = list(string)
}

variable "route_table_ids" {
  description = "One or more route table IDs. Applicable for endpoints of type Gateway."
  default     = []
  type        = list(string)
}

variable "auto_accept" {
  description = "Automatically accept the new VPC. Default false"
  type        = bool
  default     = false
}
