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

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | git::https://github.com/Woitekku/nc-eks-module.git | n/a |
| <a name="module_r53-acm"></a> [r53-acm](#module\_r53-acm) | git::https://github.com/Woitekku/nc-r53-acm-module.git | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/Woitekku/nc-vpc-module.git | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | n/a |
<!-- END_TF_DOCS -->