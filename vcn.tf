resource "oci_core_vcn" "PROD_SPOKE1_VCN" {
    #Required
    compartment_id = var.compartment_ocid
    cidr_block = "10.77.0.0/20"
    display_name = "PROD_SPOKE1_VCN"
    dns_label = "spoke1"
    is_ipv6enabled = false
}

locals {
  PROD_SPOKE1_VCN_default_route_table = oci_core_vcn.PROD_SPOKE1_VCN.default_route_table_id
}

resource "oci_core_security_list" "SPOKE1_security_list" {
    #Required
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.PROD_SPOKE1_VCN.id

    display_name = "PROD_SPOKE1_VCN_SL"
    egress_security_rules {
        destination = "0.0.0.0/0"
        protocol = "6"
        icmp_options {
            type = 8
        }
        tcp_options {
            source_port_range {
                max = 65535
                min = 1
            }
        }
        udp_options {
            source_port_range {
                max = 65535
                min = 1
            }
        }
    }

    ingress_security_rules {
        protocol = "6"
        source = "0.0.0.0/0"
        icmp_options {
            type = 8
        }
        tcp_options {
            source_port_range {
                max = 65535
                min = 1
            }
        }
        udp_options {
            source_port_range {
                max = 65535
                min = 1
            }
        }
    }
}

resource "oci_core_vcn" "PROD_SPOKE2_VCN" {
    #Required
    compartment_id = var.compartment_ocid
    cidr_block = "10.77.16.0/20"
    display_name = "PROD_SPOKE1_VCN"
    dns_label = "spoke1"
    is_ipv6enabled = false
}