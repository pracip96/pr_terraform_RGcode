data "azurerm_resource_group" "rgterraform" {
count = var.create_resource ? 1 : 0
 
  name = var.rgname
 } 
 
 /*locals {
  create_resource = can(data.azurerm_resource_group.rgterraform.id)
} 
resource "null_resource" "print_not_exists" {
   count = can(data.azurerm_resource_group.rgterraform[0].id) ? 0 : 1

  provisioner "local-exec" {
    command = "echo 'Resource group dexist.'"
  }
}
resource "null_resource" "print_exists" {
   count = !can(data.azurerm_resource_group.rgterraform[0].id) ? 0 : 1

  provisioner "local-exec" {
    command = "echo 'Resource group dexist.'"
  }
}*/
resource "azurerm_resource_group" "rgterraform"{
  count = var.create_resource ? 0 : 1
  name = var.rgname
 location =var.rglocation
} 