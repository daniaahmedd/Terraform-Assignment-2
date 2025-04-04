resource "oci_core_subnet" "PROD_SPOKE1_APP" {
    cidr_block = "10.77.0.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.PROD_SPOKE1_VCN.id
    display_name = "PROD_SPOKE1_APP_SUBNET"
    prohibit_public_ip_on_vnic = true #Private Subent
}

resource "oci_core_subnet" "PROD_SPOKE1_WEB" {
    cidr_block = "10.77.1.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.PROD_SPOKE1_VCN.id
    display_name = "PROD_SPOKE1_WEB_SUBNET"
    prohibit_public_ip_on_vnic = false #Public Subent
}

resource "oci_core_subnet" "PROD_SPOKE1_DB" {
    cidr_block = "10.77.2.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.PROD_SPOKE1_VCN.id
    display_name = "PROD_SPOKE1_DB_SUBNET"
    prohibit_public_ip_on_vnic = true #Private Subent
}

resource "oci_core_subnet" "PROD_SPOKE2_APP" {
    cidr_block = "10.77.16.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.PROD_SPOKE2_VCN.id
    display_name = "PROD_SPOKE2_APP_SUBNET"
    prohibit_public_ip_on_vnic = true #Private Subent
}

resource "oci_core_subnet" "PROD_SPOKE2_WEB" {
    cidr_block = "10.77.17.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.PROD_SPOKE2_VCN.id
    display_name = "PROD_SPOKE2_WEB_SUBNET"
    prohibit_public_ip_on_vnic = false #Public Subent
}

resource "oci_core_subnet" "PROD_SPOKE2_DB" {
    cidr_block = "10.77.18.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.PROD_SPOKE2_VCN.id
    display_name = "PROD_SPOKE2_DB_SUBNET"
    prohibit_public_ip_on_vnic = true #Private Subent
}