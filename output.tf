output "rgnameout"{
  value = var.create_resource ? var.rgname : null
}

output "rglocationout"{
  value= var.create_resource ? var.rglocation : null
}

output "errormessage"{
  value= can(data.azurerm_resource_group.rgterraform[0].id) ? "RG exists" : null
}
