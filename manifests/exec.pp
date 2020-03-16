# @summary A short summary of the purpose of this class
# A description of what this class does
#
# @example
#   include spec_testing::exec
class spec_testing::exec {
  exec { 'whoami':
    path   => '/usr/bin:/usr/sbin:/bin',
  }
}
