resource "openstack_networking_secgroup_v2" "rke2" {
  description = "rke2 security group"
  name        = "rke2_secgroup"
}

resource "openstack_networking_secgroup_rule_v2" "kubernetes_api" {
  port_range_max    = 9345
  protocol          = "tcp"
  port_range_min    = 9345
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "kubernetes_api_2" {
  port_range_min    = 6443
  protocol          = "tcp"
  port_range_max    = 6443
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "Flannel_VXLAN" {
  port_rang_min     = 8472
  protocol          = "udp"
  port_range_max    = 8472
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
}

resource "openstack_networking_secgroup_rule_v2" "kubelet" {
  direction         = "ingress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
  port_range_min    = 10250
  port_range_max    = 10250
}

resource "openstack_networking_secgroup_rule_v2" "etcd_client_port" {
  direction         = "ingress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
  port_range_max    = 2379
  port_range_min    = 2379
}

resource "openstack_networking_secgroup_rule_v2" "etcd_peer_port" {
  direction         = "ingress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
  port_range_max    = 2380
  port_range_min    = 2380
}

resource "openstack_networking_secgroup_rule_v2" "node_port" {
  direction         = "ingress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
  port_range_min    = 30000
  port_range_max    = 32767
}

resource "openstack_networking_secgroup_rule_v2" "rancher_ui" {
  direction         = "ingress"
  ethertype         = "http"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
  port_range_min    = 8080
  port_range_max    = 8080
}

resource "openstack_networking_secgroup_rule_v2" "rancher_agent" {
  direction         = "ingress"
  ethertype         = "https"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
  port_range_min    = 8443
  port_range_max    = 8443
}

resource "openstack_networking_secgroup_rule_v2" "node_comms_1" {
  direction         = "egress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
  port_range_max    = 9345
  port_range_min    = 9345
}

resource "openstack_networking_secgroup_rule_v2" "node_comms_2" {
  direction         = "egress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rke2.id
  port_range_max    = 6443
  port_range_min    = 6443
}