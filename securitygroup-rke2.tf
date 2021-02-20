resource "openstack_networking_secgroup_v2" "rke2" {
  description = "rke2 security group"
  name        = "rke2_secgroup"
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_1" {
  port_range_max    = 9345
  protocol          = "tcp"
  port_range_min    = 9345
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_2" {
  port_range_min    = 6443
  protocol          = "tcp"
  port_range_max    = 6443
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_3" {
  port_rang_min     = 8472
  protocol          = "udp"
  port_range_max    = 8472
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_4" {
  protocol          = "tcp"
  port_range_min    = 6443
  port_range_max    = 6443
  direction         = "egress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_5" {
  port_rang_min     = 10250
  protocol          = "tcp"
  port_range_max    = 10250
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_6" {
  port_rang_min     = 2379
  protocol          = "tcp"
  port_range_max    = 2379
  direction         = ""
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_7" {
  port_rang_min     = 2380
  protocol          = "tcp"
  port_range_max    = 2380
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_8" {
  port_rang_min     = 30000
  protocol          = "tcp"
  port_range_max    = 32767
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_9" {
  protocol          = "tcp"
  port_range_min    = 9345
  port_range_max    = 9345
  direction         = "egress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}