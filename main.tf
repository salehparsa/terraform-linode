terraform {
  required_version = "= 0.11.11"
}

provider "linode" {
  token = "${var.linode_token}"
}

data "linode_region" "main" {
  id = "${var.linode_region}"
}

data "linode_instance_type" "default" {
  id = "${var.instance_type}"
}

resource "linode_sshkey" "main_key" {
  label   = "public-key"
  ssh_key = "${chomp(file("~/.ssh/id_rsa.pub"))}"
}

resource "linode_instance" "staging-env" {
  label      = "${var.linode_label}"
  region     = "${data.linode_region.main.id}"
  type       = "${data.linode_instance_type.default.id}"
  private_ip = "${var.private_ip}"

  backups_enabled  = "${var.backups}"
  watchdog_enabled = true

  alerts {
    cpu            = "${var.alerts_cpu}"
    io             = "${var.alerts_io}"
    network_in     = "${var.alerts_network_in}"
    network_out    = "${var.alerts_network_out}"
    transfer_quota = "${var.alerts_transfer_quota}"
  }

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
    label           = "${var.disk_label}"
    size            = "${var.disk_size}"
    image           = "${var.linode_image}"
    authorized_keys = ["${linode_sshkey.main_key.ssh_key}"]
    root_pass       = "${var.root_password}"
  }

  disk {
    label = "${var.disk_swap_label}"
    size  = "${var.disk_swap_size}"
  }
}
