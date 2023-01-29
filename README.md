# minecraft-server-infra

Terraform script to bootstrap a linode instance.

# Usage

Run the following commands:

```sh
terraform init
terraform plan -var-file=secrets/secrets.tfvars
terraform apply -var-file=secrets/secrets.tfvars
```