module "cluster" {
    source                                  =   "./module"
    cluster_name                            =   var.cluster_name
    kubernetes_version                      =   var.kubernetes_version
    node_pool_name                          =   var.node_pool_name
    min_count                               =   var.min_count
    max_count                               =   var.max_count
    client_id                               =   var.client_id
    client_secret                           =   var.client_secret
    environment                             =   var.environment
    resource_group_name_location            =   var.resource_group_name_location
    resource_group_name                     =   var.resource_group_name
    username                                =   var.username
    vm_size                                 =   var.vm_size
}