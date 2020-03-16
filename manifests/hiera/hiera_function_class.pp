# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include spec_testing::hiera::hiera_function
class spec_testing::hiera::hiera_function_class {
  file { '/tmp/foo.txt':
    ensure  => present,
    content => hiera('some_key', 'some default value'),
  }
}
