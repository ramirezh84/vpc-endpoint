resource "aws_vpc_endpoint" "vpc_endpoint" {
  vpc_id              = var.vpc_id
  service_name        = var.service_name
  vpc_endpoint_type   = var.vpc_endpoint_type
  policy              = var.policy
  private_dns_enabled = var.private_dns_enabled
  subnet_ids          = var.subnet_ids
  security_group_ids  = var.security_group_ids
  route_table_ids     = var.route_table_ids
  auto_accept         = var.auto_accept

  tags = merge(
    var.extended_tags,
    {
      "Name"       = var.name_tag
      "appid"      = var.appid_tag
      "env"        = var.env_tag
      "awsaccount" = var.awsaccount_tag
      "createdby"  = var.createdby_tag
      "function"   = var.function_tag
    }
  )
}