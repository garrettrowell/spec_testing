# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include spec_testing::declarative_patching_versioned
class spec_testing::declarative_patching::versioned {
  package { 'foo':
    ensure => '1.1.1',
  }
}
