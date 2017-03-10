# A Define type wrapping the azure_resource_template type
# and utilizing a template file to create Azure Network
# Security Groups.
define azure_define::networksecuritygroup (
  $ensure = present,
  $resource_group,
  $address_prefix,
  $subnet_prefix,
  $rules = null,
) {

  azure_resource_template { $name:
    ensure          => $ensure,
    resource_group  => $resource_group,
    content         => file('azure_define/networksecuritygroup.json'),
    params          => {
#      rulesArray    => $rules,
      addressPrefix => $address_prefix,
      subnetPrefix  => $subnet_prefix,
    },
  }
}
