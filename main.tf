resource "digitalocean_droplet" "www" {
  image = "ubuntu-18-04-x64"
  name = "www"
  region = "sfo2"
  size = "s-1vcpu-1gb"
  user_data = "${file("user_data.yaml")}"
}

output "ip" {
    value = "${digitalocean_droplet.www.ipv4_address}"
}
