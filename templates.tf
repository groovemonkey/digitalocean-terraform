data "template_file" "haproxyconf" {
  template = "${file("${path.module}/config/haproxy.cfg.tpl")}"

  vars = {
    web1_priv_ip = "${digitalocean_droplet.web1.ipv4_address_private}"
    web2_priv_ip = "${digitalocean_droplet.web2.ipv4_address_private}"
  }
}
