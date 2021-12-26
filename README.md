# terraform-module-digitalocean-droplet
Terraform module which creates DigitalOcean droplet

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.default](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backups"></a> [backups](#input\_backups) | Boolean controlling if backups are made. | `bool` | `false` | no |
| <a name="input_droplet_agent"></a> [droplet\_agent](#input\_droplet\_agent) | A boolean indicating whether to install the DigitalOcean agent used for providing access to the Droplet web console in the control panelA boolean indicating whether to install the DigitalOcean agent used for providing access to the Droplet web console in the control panel. | `bool` | `true` | no |
| <a name="input_graceful_shutdown"></a> [graceful\_shutdown](#input\_graceful\_shutdown) | A boolean indicating whether the droplet should be gracefully shut down before it is deleted. | `bool` | `null` | no |
| <a name="input_image"></a> [image](#input\_image) | The droplet image or slug. | `string` | n/a | yes |
| <a name="input_ipv6"></a> [ipv6](#input\_ipv6) | Boolean controlling if IPv6 is enabled. | `bool` | `false` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | Boolean controlling whether monitoring agent is installed. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The droplet name. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The droplet region. | `string` | n/a | yes |
| <a name="input_resize_disk"></a> [resize\_disk](#input\_resize\_disk) | Boolean controlling whether to increase the disk size when resizing a Droplet. Increasing a Droplet's disk size is a permanent change. | `bool` | `true` | no |
| <a name="input_size"></a> [size](#input\_size) | The unique slug that identifies the type of Droplet. (https://docs.digitalocean.com/reference/api/api-reference/#tag/Sizes) | `string` | n/a | yes |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | A list of SSH key IDs or fingerprints to enable. Once a Droplet is created keys can not be added or removed via this provider. Modifying this field will prompt you to destroy and recreate the Droplet. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags associated with the Droplet. | `list(string)` | `[]` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | A string of the desired User Data for the Droplet. | `string` | `null` | no |
| <a name="input_volume_ids"></a> [volume\_ids](#input\_volume\_ids) | A list of the IDs of each block storage volume to be attached to the Droplet. | `list(string)` | `[]` | no |
| <a name="input_vpc_uuid"></a> [vpc\_uuid](#input\_vpc\_uuid) | The ID of the VPC where the Droplet will be located. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_disk"></a> [disk](#output\_disk) | The size of the instance's disk in GB. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Droplet. |
| <a name="output_image"></a> [image](#output\_image) | The image of the Droplet. |
| <a name="output_ipv4_addres_private"></a> [ipv4\_addres\_private](#output\_ipv4\_addres\_private) | The private networking IPv4 address. |
| <a name="output_ipv4_address"></a> [ipv4\_address](#output\_ipv4\_address) | The IPv4 address. |
| <a name="output_ipv6"></a> [ipv6](#output\_ipv6) | Is IPv6 enabled. |
| <a name="output_ipv6_address"></a> [ipv6\_address](#output\_ipv6\_address) | The IPv6 address. |
| <a name="output_locked"></a> [locked](#output\_locked) | Is the Droplet locked. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Droplet. |
| <a name="output_price_hourly"></a> [price\_hourly](#output\_price\_hourly) | Droplet hourly price. |
| <a name="output_price_monthly"></a> [price\_monthly](#output\_price\_monthly) | Droplet monthly price. |
| <a name="output_private_networking"></a> [private\_networking](#output\_private\_networking) | Is private networking enabled. |
| <a name="output_region"></a> [region](#output\_region) | The region of the Droplet. |
| <a name="output_size"></a> [size](#output\_size) | The instance size. |
| <a name="output_status"></a> [status](#output\_status) | The status of the Droplet. |
| <a name="output_tags"></a> [tags](#output\_tags) | The tags associated with the Droplet. |
| <a name="output_urn"></a> [urn](#output\_urn) | The uniform resource name of the Droplet. |
| <a name="output_vcpus"></a> [vcpus](#output\_vcpus) | The number of the instance's virtual CPUs. |
| <a name="output_volume_ids"></a> [volume\_ids](#output\_volume\_ids) | A list of the attached block storage volumes. |
