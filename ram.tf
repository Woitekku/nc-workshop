#resource "aws_ram_resource_share" "this" {
#  name                      = "client-server"
#  allow_external_principals = true
#}
#
#resource "aws_ram_resource_association" "this" {
#  resource_arn       = aws_vpclattice_service_network.this.arn
#  resource_share_arn = aws_ram_resource_share.this.arn
#}
#
#resource "aws_ram_principal_association" "this" {
#  principal          = "381772145383"
#  resource_share_arn = aws_ram_resource_share.this.arn
#}