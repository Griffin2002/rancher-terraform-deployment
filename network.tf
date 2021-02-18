
resource "openstack_compute_floatingip_v2" "fip" {
    count = var.node_count
    pool = var.pool_name
}

resource "openstack_compute_floatingip_associate_v2" "nodes" {
    count = var.node_count
    floating_ip = openstack_compute_floatingip_v2.fip[count.index].address
    instance_id = openstsack_compute_instace_v2.nodes[count.index].id
}