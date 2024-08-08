locals {
  haproxy_config = templatefile("${path.module}/config/haproxy.cfg.tpl", {
    web1_priv_ip = digitalocean_droplet.web1.ipv4_address_private
    web2_priv_ip = digitalocean_droplet.web2.ipv4_address_private
  })
}

resource "digitalocean_droplet" "haproxy-web" {
  image     = "ubuntu-24-04-x64"
  name      = "haproxy-web"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = <<-EOF
              #!/bin/bash
              sleep 25
              apt-get update
              apt-get install -y haproxy
              EOF
  ssh_keys = [
    var.ssh_fingerprint
  ]
  connection {
    host        = digitalocean_droplet.haproxy-web.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.pvt_key)
    timeout     = "2m"
  }
  provisioner "file" {
    content     = local.haproxy_config
    destination = "/etc/haproxy/haproxy.cfg"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo service haproxy restart"
    ]
  }
}

