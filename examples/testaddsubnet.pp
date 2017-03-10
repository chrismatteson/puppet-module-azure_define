class azure_define::testaddsubnet (
) {

  azure_define::addsubnet { '172.16.0.128-25':
    ensure             => present,
    resource_group     => 'chrismatteson',
    existing_vnet_name => 'test',
    address_prefix     => '172.16.0.128/25',
  }
}
include azure_define::testaddsubnet
