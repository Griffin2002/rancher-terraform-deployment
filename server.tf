resource "openstack_compute_instance_v2" "nodes" {
    name = var.node_name
    image_id = var.image_id
    flavor_id = var.flavor_id
    key_pair = var.key_pair
    security_groups = ["default"]

    metadata = {
        this = "that"
    }

    network {
        name = var.network
    }
}

resource "openstack_blockstorage_volume_v2" "node_storage" {
    name = "Node Storage"
    size = 100
}

resource "openstack_compute_volume_attach_v2" "attached"{
    instance_id = openstack_compute_instance_v2.nodes.id
    volume_id = openstack_blockstorage_volume_v2.node_storage.id
}

resource "openstack_compute_floatingip_v2" "fip" {
    pool = var.pool_name
}

resource "openstack_compute_floatingip_associate_v2" "nodes" {
    floating_ip = openstack_compute_floatingip_v2.fip.address
    instance_id = openstsack_compute_isntace_v2.nodes.id
}