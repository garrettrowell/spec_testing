# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include spec_testing::exec_onlyif
class spec_testing::exec_attributes {
  exec { 'whoami onlyif':
    command => 'whoami',
    path    => '/usr/bin:/usr/sbin:/bin',
    onlyif  => '/usr/bin/true',
  }

  exec { 'whoami unless':
    command => 'whoami',
    path    => '/usr/bin:/usr/sbin:/bin',
    unless  => '/usr/bin/true',
  }

}
