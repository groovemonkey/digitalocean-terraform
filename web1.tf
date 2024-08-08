resource "digitalocean_droplet" "web1" {
  image     = "ubuntu-24-04-x64"
  name      = "web1"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = file("config/webuserdata.sh")
  ssh_keys = [
    var.ssh_fingerprint
  ]
}

