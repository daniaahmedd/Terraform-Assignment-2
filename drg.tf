resource "oci_core_drg" "test_drg" {
    compartment_id = var.compartment_id

    display_name = "ConnectorDRG"
}

