# Declare variables
variable "DO_TOKEN" {}

# Configure DO droplet
provider "digitalocean" {
  token = "${var.DO_TOKEN}"
}
