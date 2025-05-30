<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11 |
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | ~> 2.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_api_gateway"></a> [api\_gateway](#module\_api\_gateway) | github.com/GrabAByte/terraform-module-aws-api-gateway | v1.0.2 |
| <a name="module_lambda"></a> [lambda](#module\_lambda) | github.com/GrabAByte/terraform-module-aws-lambda | v1.0.1 |
| <a name="module_s3"></a> [s3](#module\_s3) | github.com/GrabAByte/terraform-module-aws-s3 | v1.0.2 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | github.com/GrabAByte/terraform-module-aws-vpc | v1.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment_map"></a> [environment\_map](#input\_environment\_map) | The environment lookup for each workspace | `map(any)` | <pre>{<br/>  "development": "development",<br/>  "pre-production": "pre-production",<br/>  "production": "production"<br/>}</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS region in which to deploy | `string` | `"eu-west-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_invoke_url"></a> [invoke\_url](#output\_invoke\_url) | n/a |
<!-- END_TF_DOCS -->