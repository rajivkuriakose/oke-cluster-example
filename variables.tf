
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}


variable "ssh_private_key" {}
variable "ssh_public_key" {}

variable "compartment_ocid" {}

provider "oci" {
  version              = ">= 3.0.0"
  tenancy_ocid         = "${var.tenancy_ocid}"
  user_ocid            = "${var.user_ocid}"
  fingerprint          = "${var.fingerprint}"
  private_key_path     = "${var.private_key_path}"
  region               = "us-ashburn-1"
}

data "oci_identity_availability_domains" "ashburn" {
  compartment_id       = "${var.tenancy_ocid}"
}

### Network Variables ##### 

variable "vcn_cidr_block" {
  default = "10.0.0.0/16"
}

variable "dns_label_vcn" {
  default = "dnsvcn"
}

variable "subnet_cidr_worker1" {
  default = "10.0.1.0/24"
}

variable "subnet_cidr_worker2" {
  default = "10.0.2.0/24"
}

variable "subnet_cidr_lbr1" {
  default = "10.0.10.0/24"
}

variable "subnet_cidr_lbr2" {
  default = "10.0.20.0/24"
}

variable "instance_shape" {
  default = "VM.Standard2.1"
}

variable "cluster_kubernetes_version" {
  default = "v1.11.9"
}

variable "cluster_name" {
  default = "Cluster_1"
}

variable "availability_domain" {
  default = 3
}

variable "cluster_options_add_ons_is_kubernetes_dashboard_enabled" {
  default = true
}

variable "cluster_options_add_ons_is_tiller_enabled" {
  default = true
}

variable "cluster_options_kubernetes_network_config_pods_cidr" {
  default = "10.1.0.0/16"
}

variable "cluster_options_kubernetes_network_config_services_cidr" {
  default = "10.2.0.0/16"
}

variable "node_pool_initial_node_labels_key" {
  default = "project"
}

variable "node_pool_initial_node_labels_value" {
  default = "dev"
}

variable "node_pool_kubernetes_version" {
  default = "v1.11.9"
}

variable "node_pool_name" {
  default = "NodePool_1"
}

variable "node_pool_node_image_name" {
  default = "Oracle-Linux-7.5"
}

variable "node_pool_node_shape" {
  default = "VM.Standard2.1"
}

variable "node_pool_quantity_per_subnet" {
  default = 1
}

variable "node_pool_ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCv5ffXs49bQ+UP9Vm8ECzlcb+iBFjQF9FbariqiVP2hjGknQatsSNAPRS23e6N7JoZ78byNIbHfhSAcnGyLD6R02NwelTadbZb3hMgHY2VlY8Su96gXT1gFkMfQQnUkp2Wrx4PnXl1e+tYLRtM6+EyuSMA63buaxq5iO81i8R5h0NThgm75r9JathDurDUD5bvZYxxIO02lCPs/L14uYmJogXzl0o4+T/gWR55hizLXdZ1a+J+TWxzkGWCDCxjUqqQomUGNGNHeNKNkXvMimf5872ST5y18m/XNYAQZ9cmpUGF5H/xUkq2LkrRVVTP5BSzVj8TNEfRTqw4Caoydgmf opc@tf_instance3"
}




