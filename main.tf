terraform {
  required_version = "= 0.11.11"
}

provider "linode" {
  token = "${var.linode_token}"
}

resource "linode_instance" "staging-env" {
  label  = "${var.linode_label}"
  region = "${var.linode_region}"
  type   = "${var.instance_type}"

  config {
    label       = "${var.config_label}"
    kernel      = "${var.linode_kernel}"
    root_device = "${var.config_root_device}"

    devices {
      sda = {
        disk_label = "${var.disk_label}"
      }

      sdb = {
        disk_label = "${var.disk_swap_label}"
      }
    }
  }

  disk {
    label = "${var.disk_label}"
    size  = "${var.disk_size}"
  }

  disk {
    label = "${var.disk_swap_label}"
    size  = "${var.disk_swap_size}"
  }
}
