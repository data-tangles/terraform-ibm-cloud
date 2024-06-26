terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.64.1"
    }
  }
  
  cloud {
    organization = "#{organization}#"
    hostname = "app.terraform.io"

    workspaces {
      name = "#{workspace}#"
    }

    token = "#{token}#"
  }
}

provider "ibm" {
  ibmcloud_api_key = "#{ibmcloud_api_key}#"
  region = "#{region}#"
}