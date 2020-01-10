output "dns_name" {
  value = lookup(aws_vpc_endpoint.vpc_endpoint.dns_entry[0], "dns_name")
  description = "DNS Name for the endpoint"
}

output "id" {
  value       = aws_vpc_endpoint.vpc_endpoint.id
  description = "The ID of the VPC endpoint."
}

output "hosted_zone_id" {
  value = lookup(aws_vpc_endpoint.vpc_endpoint.dns_entry[0], "hosted_zone_id")
  description = "Hosted Zone Id for the endpoint"
}

output "network_interface_ids" {
  value = aws_vpc_endpoint.vpc_endpoint.network_interface_ids
  description = "Network Interfaces created for endpoint"
}