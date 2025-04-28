#resource "aws_vpclattice_service_network" "this" {
#  name = "client-server"
#  auth_type = "NONE"
#}
#
#resource "aws_vpclattice_service_network_vpc_association" "this" {
#  service_network_identifier = aws_vpclattice_service_network.this.id
#  vpc_identifier             = module.vpc.vpc_id
#}