resource "digitalocean_droplet" "www" {
  image = "ubuntu-18-04-x64"
  name = "www"
  region = "sfo2"
  size = "s-1vcpu-1gb"
  ssh_keys = [
    "66:0b:e5:21:cb:ce:c1:ae:f7:f0:16:d2:98:cc:bc:3d"
  ]
  user_data = "${file("user_data.yaml")}"
}

output "ip" {
    value = "${digitalocean_droplet.www.ipv4_address}"
}
