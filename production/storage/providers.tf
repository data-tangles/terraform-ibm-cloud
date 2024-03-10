terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.63.0"
    }
  }
  backend "remote" {}
}

provider "ibm" {
  ibmcloud_api_key = "#{ibmcloud_api_key}#"
  region = "#{region}#"
}