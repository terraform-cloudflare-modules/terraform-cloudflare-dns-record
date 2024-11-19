# _Cloudflare_ - DNS Record <img src="https://raw.githubusercontent.com/fmjstudios/artwork/refs/heads/main/projects/terraform/icon/color/cloudflare-icon-color.png" alt="Cloudflare Logo" align="right" width="128"/> <img src="https://raw.githubusercontent.com/fmjstudios/artwork/refs/heads/main/projects/terraform/icon/color/terraform-icon-color.png" alt="Terraform Logo" align="right" width="128"/>

[![License](https://img.shields.io/github/license/terraform-cloudflare-modules/terraform-cloudflare-dns-record?label=License)](https://opensource.org/licenses/MIT)
[![Terraform](https://img.shields.io/badge/Terraform-_>=_1.7-brightgreen?logo=terraform&logoColor=623CE4)][terraform]
[![Opentofu](https://img.shields.io/badge/OpenTofu-_>=_1.8-brightgreen?logo=opentofu)][opentofu]
[![CI Status](https://github.com/terraform-cloudflare-modules/terraform-cloudflare-dns-record/actions/workflows/testing.yaml/badge.svg)](https://github.com/terraform-cloudflare-modules/terraform-cloudflare-dns-record/blob/main/.github/workflows/testing.yaml)
[![GitHub Release](https://img.shields.io/github/v/release/terraform-cloudflare-modules/terraform-cloudflare-dns-record?label=Release)][github_releases]
[![GitHub Activity](https://img.shields.io/github/commit-activity/m/terraform-cloudflare-modules/terraform-cloudflare-dns-record?label=Commits)][github_commits]
[![Renovate](https://img.shields.io/badge/Renovate-enabled-brightgreen?logo=renovate&logoColor=1A1F6C)][renovate]
[![Pre-Commit](https://img.shields.io/badge/PreCommit-enabled-brightgreen?logo=precommit&logoColor=FAB040)][pre-commit]

A [Terraform module][module] to create and manage DNS entries within your [Cloudflare][cloudflare] DNS configuration.

## ✨ TL;DR

```shell
module "cloudflare_dns_a" {
  source = "terraform-cloudflare-modules/dns/record"
  ...
}
```

<!-- BEGIN_TF_DOCS -->

## Providers

| Name                                                                  | Version |
| --------------------------------------------------------------------- | ------- |
| <a name="provider_cloudflare"></a> [cloudflare](#provider_cloudflare) | 4.46.0  |

## Modules

No modules.

## Inputs

| Name                                                                              | Description                                                                                     | Type     | Default | Required |
| --------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | -------- | ------- | :------: |
| <a name="input_comment"></a> [comment](#input_comment)                            | A comment to attach to the zone within the Cloudflare dashboard. Does not affect DNS responses. | `string` | `null`  |    no    |
| <a name="input_dns_record_name"></a> [dns_record_name](#input_dns_record_name)    | The name of the name DNS record to be added.                                                    | `string` | n/a     |   yes    |
| <a name="input_dns_record_type"></a> [dns_record_type](#input_dns_record_type)    | The type of DNS record to be altered.                                                           | `string` | `"A"`   |    no    |
| <a name="input_dns_record_value"></a> [dns_record_value](#input_dns_record_value) | The value of the name DNS record to be added.                                                   | `string` | n/a     |   yes    |
| <a name="input_domain"></a> [domain](#input_domain)                               | The domain for which the DNS records should be altered.                                         | `string` | n/a     |   yes    |
| <a name="input_use_cf_proxy"></a> [use_cf_proxy](#input_use_cf_proxy)             | Whether or not to enable proxying through Cloudflare's DNS network.                             | `bool`   | `false` |    no    |

## Outputs

| Name                                                           | Description                                 |
| -------------------------------------------------------------- | ------------------------------------------- |
| <a name="output_hostname"></a> [hostname](#output_hostname)    | The FQDN of the record.                     |
| <a name="output_proxiable"></a> [proxiable](#output_proxiable) | Whether or not this record will be proxied. |

<!-- END_TF_DOCS -->

### 🔃 Contributing

Refer to our [documentation for contributors][contributing] for contributing guidelines, commit message
formats and versioning tips.

### 📥 Maintainers

This project is owned and maintained by [FMJ Studios][org] refer to the [`AUTHORS`][authors] or [`CODEOWNERS`][owners]
for more information. You may also use the linked contact details to reach out directly.

### ©️ Copyright

- _Assets provided by:_ **[HashCorp][hashicorp]**
- _Sources provided by:_ **[FMJ Studios][org]** under the **[MIT License][license]**

<!-- INTERNAL REFERENCES -->

<!-- Project references -->

<!-- File references -->

[license]: LICENSE
[contributing]: docs/CONTRIBUTING.md
[authors]: .github/AUTHORS
[owners]: .github/CODEOWNERS

<!-- General links -->

[org]: https://github.com/fmjstudios
[terraform]: https://terraform.io
[opentofu]: https://opentofu.org/
[hashicorp]: https://www.hashicorp.com/
[cloudflare]: https://cloudflare.com
[github_releases]: https://github.com/terraform-cloudflare-modules/terraform-cloudflare-dns-record/releases
[github_commits]: https://github.com/terraform-cloudflare-modules/terraform-cloudflare-dns-record/commits/main/

<!-- Third-party -->

[module]: https://registry.terraform.io/modules/terraform-cloudflare-modules/dns/record/latest
[renovate]: https://renovatebot.com/
[pre-commit]: https://pre-commit.com/
