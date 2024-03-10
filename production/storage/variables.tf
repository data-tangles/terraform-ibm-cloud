variable "resource_group_name" {
  type = string
  description = "The name of the Resource Group"
}

variable "cos_instance_name" {
  type = string
  description = "The name of the Cloud Object Storage instance"
}

variable "cos_bucket_name" {
  type = string
  description = "The name of the Cloud Object Storage bucket"
}

variable "cos_bucket_region_location" {
  type = string
  description = "The location of the Cloud Object Storage bucket"
}

variable "cos_bucket_allowed_ip" {
  type = list(string)
  description = "The array of allowed IP addresses"
}

variable "tags" {
  type = list(string)
  description = "The tags for the resources"
}