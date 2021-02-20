resource "openstack_networking_secgroup_v2" "rancher_docker" {
  name        = "rancher_docker"
  description = "security group for docker deployed versions of rancher"
}

resource "openstack_networking_secgroup_rule_v2" "rancher_ui" {
  direction         = "ingress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rancher_docker.id
  port_range_max    = 80
  port_range_min    = 80
}

resource "openstack_networking_secgroup_rule_v2" "rancher_agent" {
  direction         = "ingress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rancher_docker.id
  port_range_min    = 443
  port_range_max    = 443
}

resource "openstack_networking_secgroup_rule_v2" "ssh" {
  direction         = "egress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rancher_docker.id
  port_range_min    = 22
  port_range_max    = 22
}

resource "openstack_networking_secgroup_rule_v2" "docker_daemon" {
  direction         = "egress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rancher_docker.id
  port_range_max    = 2376
  port_range_min    = 2376
}

resource "openstack_networking_secgroup_rule_v2" "kubernetes_api" {
  direction         = "egress"
  ethertype         = "tcp"
  security_group_id = openstack_networking_secgroup_v2.rancher_docker.id
  port_range_min    = 6443
  port_range_max    = 6443
}