# Resource Group
resource "ibm_resource_group" "resource_group" {
  name     = var.resource_group_name
}

# Cloud Object Storage
resource "ibm_resource_instance" "cos_instance" {
  name              = var.cos_instance_name
  service           = "cloud-object-storage"
  plan              = "lite"
  location          = "global"
  resource_group_id = ibm_resource_group.resource_group.id
  tags              = var.tags

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}

# Cloud Object Storage Bucket
resource "ibm_cos_bucket" "cos_bucket" {
  bucket_name           = var.cos_bucket_name
  resource_instance_id  = ibm_resource_instance.cos_instance.id
  region_location       = var.cos_bucket_region_location
  storage_class         = "standard"

  allowed_ip = var.cos_bucket_allowed_ip
}