### Disclaimer: You do NOT have to use it! This is just an example to let you start smoothly and focus on core aspects of the workshop, which is AI 

There are 3 modules prepared:  
1. vpc module = https://github.com/Woitekku/nc-vpc-module  
That module creates basic vpc schema, with public and private subnets, igw, natgw and routing 
2. r53+acm module = https://github.com/Woitekku/nc-r53-acm-module  
That module creates r53 zone based on your provided domain and gives you ns records needed to be setup on your isp, in order to delegate domain to route 53
3. eks module = https://github.com/Woitekku/nc-eks-module  
That module create eks cluster. It has:
- dedicated iam role for your team
- addons like: kube-proxy, coredns, vpc-cni, ebs and efs drivers, cloudwatch observability, node monitoring, cert-manager, kube state metrics, metrics server, prometheus node exporter
- helm charts: argo-cd (take initial password from k8s secrets), aws load balancer ingress controller, cluster autoscaler, external dns, external secrets
- 2 managed node groups with taints and tolerations: system and generic
 
Here is one more repo with an example how to use it:  
https://github.com/Woitekku/nc-workshop

```
terraform init   
terraform plan/apply --target module.vpc  
terraform plan/apply --target module.r53-acm  
terraform plan/apply
```

requirements:  
- terraform (+tfenv, tfswitch, etc.)
- git
- pre-commit
- terraform docs

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.11.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.91.0 |
| <a name="requirement_cloudinit"></a> [cloudinit](#requirement\_cloudinit) | ~> 2.3.6 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.17.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | ~> 1.19.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.36.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.91.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | git::https://github.com/Woitekku/nc-eks-module.git | n/a |
| <a name="module_r53-acm"></a> [r53-acm](#module\_r53-acm) | git::https://github.com/Woitekku/nc-r53-acm-module.git | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/Woitekku/nc-vpc-module.git | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.team](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.team](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.team_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_team_assume_role_principals"></a> [team\_assume\_role\_principals](#input\_team\_assume\_role\_principals) | n/a | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | n/a |
<!-- END_TF_DOCS -->