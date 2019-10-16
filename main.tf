resource "digitalocean_droplet" "www" {
  image = "ubuntu-18-04-x64"
  name = "www"
  region = "sfo2"
  size = "s-1vcpu-1gb"
}
