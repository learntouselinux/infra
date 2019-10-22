output "droplet_ip" {
  value = "${digitalocean_droplet.droplet[0].ipv4_address}"
}
