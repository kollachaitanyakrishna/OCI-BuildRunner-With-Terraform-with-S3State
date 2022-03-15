resource "random_string" "deploy_id" {
  length  = 4
  special = false
}

resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaas5a4ed5wdptp7qqprg7uzxolkcjmlj2agz2mmmzxbsse3vds6sja"
    description = "Compartment for Terraform resources."
    name = "development"
}

# Outputs for compartment

output "compartment-name" {
  value = oci_identity_compartment.tf-compartment.name
}

output "compartment-OCID" {
  value = oci_identity_compartment.tf-compartment.id
}