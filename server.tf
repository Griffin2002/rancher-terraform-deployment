resource "openstack_compute_instance_v2" "nodes" {
    name            = var.node_name
    image_id        = var.image_id
    flavor_id       = var.flavor_id
    key_pair        = openstack_compute_keypair_v2.deployer_keypair.name
    security_groups = ["default", openstack_compute_secgroup_v2.rancher.id]

    metadata = {
        this = "that"
    }

    network {
        name = var.network
    }
}

resource "openstack_blockstorage_volume_v2" "node_storage" {
    count = var.node_count
    name  = "Node Storage"
    size  = 100
}

resource "openstack_compute_volume_attach_v2" "attached"{
    count       = var.node_count
    instance_id = openstack_compute_instance_v2.nodes[count.index].id
    volume_id   = openstack_blockstorage_volume_v2.node_storage[count.index].id
}
