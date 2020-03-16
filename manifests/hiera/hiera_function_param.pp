# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include spec_testing::hiera::hiera_function_param
class spec_testing::hiera::hiera_function_param (
  String $content = hiera('some_key', 'some default value')
){
  file { '/tmp/test.txt':
    ensure  => present,
    content => $content,
  }
}
