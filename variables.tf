variable external_network {
    type = string
    description = "Name of the external network"
}
variable float_ip_pool {
    type = string
    description = "Name of the Floating IP Pool"
}
variable node_count {
    description = "number of nodes to stand up, generally and odd number"
}