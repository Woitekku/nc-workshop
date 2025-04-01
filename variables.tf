variable "domain" {
    type = string
    description = "your own domain"
}

variable "cluster_name" {
    type = string
    description = "the k8s cluster name"
    default = "WorkshopCluster"
}

variable "vpc_name" {
    type = string
    description = "the name of VPC in the account"
    default = "workshop"
}