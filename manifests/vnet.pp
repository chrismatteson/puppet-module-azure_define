# A Define type wrapping the azure_resource_template type
# and utilizing a template file to create Azure Network
# Security Groups.
define azure_define::vnet (
  $ensure = present,
  $resource_group,
  $address_prefix,
) {

  azure_resource_template { $name:
    ensure              => $ensure,
    resource_group      => $resource_group,
    content             => file("$module_name/vnet.json"),
    params              => {
      vnetName          => $name,
      vnetAddressPrefix => $address_prefix,
    }
  }
}
