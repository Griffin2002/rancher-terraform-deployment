resource "openstack_compute_floatingip_v2" "node-ip" {
    pool = var.float_ip_pool
    count = var.instance_count
}