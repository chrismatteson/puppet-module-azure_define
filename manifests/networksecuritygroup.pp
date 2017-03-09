# A Define type wrapping the azure_resource_template type
# and utilizing a template file to create Azure Network
# Security Groups.
define demomodule::azure::networksecuritygroup (
  $ensure = present,
  $region,
  $resource_group,
  $rules,
) {

  azure_resource_template { $name:
    ensure  => $ensure,
    content => template('demomodule/networksecuritygroup.json'),
  }
}
