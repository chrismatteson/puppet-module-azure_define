class azure_define::testvnet (
) {

  azure_define::vnet { 'test':
    ensure         => present,
    resource_group => 'chrismatteson',
    address_prefix => '172.16.0.0/24',
  }
}
include azure_define::testvnet
