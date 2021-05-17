provider "aviatrix" {
  controller_ip = var.controller_ip
  username      = var.username
  password      = var.password
  //version       = "~> 2.19.0"
}



resource "aviatrix_fqdn_tag_rule" "test_fqdn" {
  fqdn_tag_name = "my_tag"
  fqdn          = "nicovibert.com"
  protocol      = "tcp"
  port          = "443"
}