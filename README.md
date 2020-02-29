# Deploy instance on Linode with Terraform

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/) installed on your computer.
* You must have an Account in [Linode](https://www.linode.com/)

This templated tested with Terraform `v0.11.14` and `provider.linode v1.9.2`.

## Configure Linode

Technically, [Terraform](https://www.terraform.io) can read Linode Token from `TF_VAR_token="Your TOKEN"` .

You can configure it in variables file as well:

```hcl
variable "linode_token" {
  description = "Linode API v4 Personal Access Token"
  default = "YOUR TOKEN"
}
```

Apart from that, you can even rename `secret-example.tfvars` to `secret.tfvars` and store your API Token there.

## Terraform

Validate the templates:

```
terraform plan
```

Deploy the code:

```
terraform apply
```

If you are using `secret.tfvars` you need to use `-var-file="secret.tfvars"` flags for your plan or apply.


## Output

Output contains Information about instance status and Public IP Address and Specs.
