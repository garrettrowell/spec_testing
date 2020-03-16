# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include spec_testing::declarative_patching_latest
class spec_testing::declarative_patching::latest {
  package { 'foo':
    ensure => latest
  }
}
