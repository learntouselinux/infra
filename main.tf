provider "digitalocean" {}

resource "digitalocean_droplet" "droplets" {
  count     = "${var.droplet_count}"
  image     = "${var.image}"
  name      = "${var.name}"
  size      = "${var.size}"
  region    = "${var.region}"
  user_data = "${file("user-data.yaml")}"
  ssh_keys  = ["${var.ssh_fingerprint}"]
}

resource "digitalocean_floating_ip" "droplets" {
  count      = "${var.droplet_count}"
  droplet_id = "${element(digitalocean_droplet.droplets.*.id, count.index)}"
  region     = "${var.region}"
}
