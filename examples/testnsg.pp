class azure_define::testnsg (
) {

  azure_define::networksecuritygroup { 'testnsg':
    ensure         => present,
    resource_group => 'chrismatteson',
    address_prefix => '172.16.0.0/24',
    subnet_prefix  => '172.16.0.0/24',
#    rules          => ,
  }
}
include azure_define::testnsg
