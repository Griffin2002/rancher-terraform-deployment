resource "openstack_compute_instance_v2" "nodes" {
    name = var.node_name
    image_id = var.image_id
    flavor_id = var.flavor_id
    key_pair = openstack_compute_keypair_v2.deployer_keypair.name
    security_groups = ["default"]

    metadata = {
        this = "that"
    }

    network {
        name = var.network
    }
}

resource "openstack_blockstorage_volume_v2" "node_storage" {
    count = var.node_count
    name = "Node Storage"
    size = 100
}

resource "openstack_compute_volume_attach_v2" "attached"{
    count = var.node_count
    instance_id = openstack_compute_instance_v2.nodes[count.index].id
    volume_id = openstack_blockstorage_volume_v2.node_storage[count.index].id
}

resource "openstack_compute_floatingip_v2" "fip" {
    count = var.node_count
    pool = var.pool_name
}

resource "openstack_compute_floatingip_associate_v2" "nodes" {
    count = var.node_count
    floating_ip = openstack_compute_floatingip_v2.fip[count.index].address
    instance_id = openstsack_compute_instace_v2.nodes[count.index].id
}
resource "openstack_compute_keypair_v2" "deployer_keypair" {
    name = "deployer_keypair"
    public_key = var.public_key
}