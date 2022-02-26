Plan / deploy phases:

$ terraform init
$ terraform plan
$ terraform apply

Prepare for apply (deployment / implementation):
$ terraform plan

Deply / implement:
$ terraform apply

Writes the generated plan to the given filename in an opaque file format that you can later pass to terraform apply:
$ terraform plan -out ./2022-02-25-plan

$ terraform destroy

Examples at ./.terraform/modules/vpc/modules/examples