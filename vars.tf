variable "linode_token" {
  description = "Linode API v4 Personal Access Token"
}

variable "instance_type" {
  description = "The instance Type"
  default     = "g6-standard-1"
}

variable "linode_region" {
  description = "The Linode region to use"
  default     = "eu-central"
}

variable "linode_label" {
  description = "The label that you want to use in Linode"
  default     = "linode11393997"
}

variable "linode_kernel" {
  description = "The Name of the Kernel that you want to use in your instance"
  default     = "linode/grub2"
}

variable "config_label" {
  description = "Label of the Configuration"
  default     = "CentOS 7"
}

variable "config_root_device" {
  description = "Path of Root Device"
  default     = "/dev/root"
}

variable "disk_label" {
  description = "Label of the Disk"
  default     = "CentOS 7 Disk"
}

variable "disk_size" {
  description = "Size of the Disk in MB"
  default     = "25344"
}

variable "disk_swap_label" {
  description = "Label of the Swap Image"
  default     = "256MB Swap Image"
}

variable "disk_swap_size" {
  description = "Size of Swap in MB"
  default     = "256"
}