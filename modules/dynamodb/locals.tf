locals {
  generated_table_name = "${var.project}-${var.owner}-locks"

  merged_tags = {
    Owner        = var.owner
    Project      = var.project
    Terraform    = "true"
    Lifecycle    = var.resource_lifecycle
    CreatedDate  = timestamp()
  }
}