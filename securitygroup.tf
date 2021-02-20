resource "openstack_compute_secgroup_v2" "rancher" {
  name        = "rancher_secgroup"
  description = "Rancher Security Group"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 80
    ip_protocol = "tcp"
    to_port     = 80
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 443
    to_port     = 443
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 2379
    to_port     = 2379
    ip_protocol = "tcp"
  }

  rule {
    from_port   = 2380
    to_port     = 2380
    ip_protocol = "tcp"
  }

  rule {
    from_port   = 6443
    to_port     = 6443
    ip_protocol = "tcp"
  }

  rule {
    from_port   = 8472
    ip_protocol = "udp"
    to_port     = 8472
  }

  rule {
    from_port   = 9099
    ip_protocol = "tcp"
    to_port     = 9099
  }

  rule {
    from_port   = 10250
    ip_protocol = "tcp"
    to_port     = 10250
  }

  rule {
    from_port   = 10254
    ip_protocol = "tcp"
    to_port     = 10254
  }
}