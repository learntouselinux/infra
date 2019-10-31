output "droplet_ip" {
  value = {
    for index, droplet in digitalocean_droplet.droplets:
    index => droplet.ipv4_address
  }
  # A list of ips can also be created using tf splat operator
  # value = digitalocean_droplet.droplets.*.ipv4_address
}
