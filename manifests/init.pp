class ssh(
  String $package_name,
  String $service_name,
  String $ensure,
  String $service_ensure,
  Boolean $service_enable,
  Boolean $permit_root_login = false,
  Integer $port              = 22,
) {
  class { '::ssh::install': } 
  class { '::ssh::config': }
  class { '::ssh::service': }
}
