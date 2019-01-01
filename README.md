# Terraform to Provision Linode Environments

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an Account in [Linode](https://www.linode.com/)

This templated tested with Terraform `v0.11.11` and `provider.linode v1.3.0`.

## Configure Linode

Technically, [Terraform](https://www.terraform.io) can read Linode Token from `TF_VAR_token="Your TOKEN"` .

You can configure it in variables file as well:

```hcl
variable "linode_token" {
  description = "Linode API v4 Personal Access Token"
  default = "YOUR TOKEN"
}
```

## Terraform

Validate the templates:

```
terraform plan
```

Deploy the code:

```
terraform apply
```

## Output

Output contains Information about instance status and Public IP Address and Specs.
