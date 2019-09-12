# Configure the IBM Cloud Provider
provider "ibm" {
  ibmcloud_api_key = "${var.ibmcloud_api_key}"
  region           = "${var.region}"
}
