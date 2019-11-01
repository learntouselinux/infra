output "droplet_ip" {
  # NOTE: the for loop syntax is not backwards compatible with terraform <0.12.x.
  value = {
    for index, droplet in digitalocean_droplet.droplets:
    index => droplet.ipv4_address
  }
  # A list of ips can also be created using tf splat operator
  # value = digitalocean_droplet.droplets.*.ipv4_address
}
