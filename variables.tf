variable external_network {
    type = string
    description = "Name of the external network"
}
variable float_ip_pool {
    type = string
    description = "Name of the Floating IP Pool"
}
variable instance_count {
    default = 3
}