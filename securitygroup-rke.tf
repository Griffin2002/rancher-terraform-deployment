resource "openstack_networking_secgroup_v2" "rke" {
  name        = "rke_secgroup"
  description = "rke security group"

}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_2" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_3" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_4" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_5" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 6443
  port_range_max    = 6443
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_6" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 6443
  port_range_max    = 6443
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_7" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_8" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2376
  port_range_max    = 2376
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_9" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2379
  port_range_max    = 2379
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_10" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2379
  port_range_max    = 2379
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_11" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2380
  port_range_max    = 2380
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_12" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2380
  port_range_max    = 2380
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_13" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 8472
  port_range_max    = 8472
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_14" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 8472
  port_range_max    = 8472
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_15" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10250
  port_range_max    = 10250
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_16" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10250
  port_range_max    = 10250
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_17" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10254
  port_range_max    = 10254
  security_group_id = openstack_networking_secgroup_v2.rke.id
}

resource "openstack_networking_secgroup_rule_v2" "rke_rule_17" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10254
  port_range_max    = 10254
  security_group_id = openstack_networking_secgroup_v2.rke.id
}