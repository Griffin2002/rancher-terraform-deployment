variable network {
  type = string
  description = "Name of the network"
}
variable pool_name {
  type = string
  description = "Name of the Floating IP Pool"
}
variable node_count {
  description = "number of nodes to stand up, generally and odd number"
}
variable node_name {
  description = "The name of the nodes"
}
variable public_key {
  description = "The public key of the deployer"
}
variable image_id {
  description = "The UUID of the image to use to build the instance"
}
variable flavor_id {
  description = "The UUID of the flavor of the instance"
}