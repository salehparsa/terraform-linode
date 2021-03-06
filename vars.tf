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

variable "linode_image" {
  description = "The Linode image to use"
  default     = "linode/CentOS7"
}

variable "linode_label" {
  description = "The label that you want to use in Linode"
  default     = "linode11393997"
}

variable "linode_kernel" {
  description = "The Name of the Kernel that you want to use in your instance"
  default     = "linode/grub2"
}

variable "backups" {
  description = "If this field is set to true, it will incur an additional charge for backup services."
  default     = "false"
}

variable "config_label" {
  description = "Label of the Configuration"
  default     = "CentOS 7"
}

variable "root_password" {
  description = "Password of the Root User"
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
  default     = "512MB Swap Image"
}

variable "disk_swap_size" {
  description = "Size of Swap in MB"
  default     = "512"
}

variable "private_ip" {
  description = "If true, the created Linode will have private networking enabled within the Linode's region."
  default     = "false"
}

variable "alerts_cpu" {
  description = "The percentage of CPU usage required to trigger an alert"
  default     = "90"
}

variable "alerts_io" {
  description = "The amount of disk IO operation per second required to trigger an alert"
  default     = "10000"
}

variable "alerts_network_in" {
  description = "The amount of incoming traffic, in Mbit/s, required to trigger an alert"
  default     = "10"
}

variable "alerts_network_out" {
  description = "The amount of outbound traffic, in Mbit/s, required to trigger an alert"
  default     = "10"
}

variable "alerts_transfer_quota" {
  description = "The percentage of network transfer that may be used before an alert is triggered"
  default     = "80"
}

