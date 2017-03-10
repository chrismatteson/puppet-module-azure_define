# A Define type wrapping the azure_resource_template type
# and utilizing a template file to add subnets to an Azure
# vnet.
define azure_define::addsubnet (
  $ensure = present,
  $resource_group,
  $existing_vnet_name,
  $address_prefix,
) {

  azure_resource_template { $name:
    ensure                   => $ensure,
    resource_group           => $resource_group,
    content                  => file("$module_name/addsubnet.json"),
    params                   => {
      existingVNETName       => $existing_vnet_name,
      newSubnetName          => $name,
      newSubnetAddressPrefix => $address_prefix,
    }
  }
}
