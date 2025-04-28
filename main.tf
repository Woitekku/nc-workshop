module "vpc" {
  source = "git::https://github.com/Woitekku/nc-vpc-module.git"

  vpc_name = "woitekku"
  vpc_cidr = "172.16.0.0/16"
}

module "r53-acm" {
  source = "git::https://github.com/Woitekku/nc-r53-acm-module.git"

  domain = "workshop.cichy.io"
}

module "eks" {
  source = "git::https://github.com/Woitekku/nc-eks-module.git?ref=gateway-api-controller"

  team_assume_role_principals    = ["arn:aws:iam::164820026678:root"]
  domain                         = "workshop.cichy.io"
  cluster_name                   = "woitekku"
  cluster_version                = "1.32"
  cluster_endpoint_public_access = true
  cluster_public_access_cidrs    = ["0.0.0.0/0"]
  vpc_id                         = module.vpc.vpc_id
  vpc_public_subnet_ids          = module.vpc.vpc_public_subnet_ids
  vpc_private_subnet_ids         = module.vpc.vpc_private_subnet_ids
  certificate_arn                = module.r53-acm.certificate_arn
}

