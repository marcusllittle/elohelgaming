variable "region" {
  description = "The AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "ssh_public_key" {
  description = "The SSH public key"
  type        = string
  default     = "" // You can set a default value or leave it as an empty string
}

variable "allowed_availability_zone_identifier" {
  description = "A list of allowed availability zone identifiers"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"] # replace with your availability zones
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "g4dn.xlarge"
}

variable "resource_name" {
  description = "Name to be used on all resources as identifier"
  type        = string
  default     = "cloud-gaming"
}

variable "root_block_device_size_gb" {
  description = "Size of the root block device in gigabytes"
  type        = number
  default     = 120
}

variable "custom_ami" {
  description = "Custom AMI ID for the EC2 instance. Leave blank to use the default Windows Server 2019 AMI"
  type        = string
  default     = ""
}
