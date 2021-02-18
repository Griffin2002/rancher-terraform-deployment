resource "openstack_compute_keypair_v2" "deployer_keypair" {
  name = "deployer_keypair"
  public_key = var.public_key
}