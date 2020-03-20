resource "azurerm_virtual_machine" "vm1" {
  name = "vm1"
  location = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  network_interface_ids = ["${azurerm_network_interface.nic1.id}"]
  vm_size = "Standard_DS1_v2"
  storage_image_reference {
    publisher = "OpenLogic"
    offer = "CentOS"
    sku = "7.5"
    version = "latest"
  }
  storage_os_disk {
    name = "myosdisk1"
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name = "vm1"
    admin_username = "${var.vm1_computername}"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags {
    environment = "staging"
  }
}

resource "azurerm_virtual_machine" "vm2" {
  name = "vm2"
  location = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  network_interface_ids = ["${azurerm_network_interface.nic2.id}"]
  vm_size = "Standard_DS1_v2"
  storage_image_reference {
    publisher = "OpenLogic"
    offer = "CentOS"
    sku = "7.5"
    version = "latest"
  }
  storage_os_disk {
    name = "myosdisk2"
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name = "${var.vm2_computername}"
    admin_username = "centos"
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
    path = "/home/centos/.ssh/authorized_keys"
    key_data = "${var.ssh_key}"
    }
  }
  tags {
    environment = "staging"
  }
}

resource "azurerm_virtual_machine" "vm3" {
  name = "vm3"
  location = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  network_interface_ids = ["${azurerm_network_interface.nic3.id}"]
  vm_size = "Standard_DS1_v2"
  storage_image_reference {
    publisher = "OpenLogic"
    offer = "CentOS"
    sku = "7.5"
    version = "latest"
  }
  storage_os_disk {
    name = "myosdisk3"
    caching = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name = "${var.vm3_computername}"
    admin_username = "centos"
  }
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
    path = "/home/centos/.ssh/authorized_keys"
    key_data = "${var.ssh_key}"
     }
  }
  tags {
    environment = "staging"
 }
}
