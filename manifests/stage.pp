# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include spec_testing::stage
class spec_testing::stage {
  stage { 'pre':
    before => Stage['main'],
  }

  class { 'spec_testing::do_nothing':
    stage => 'pre',
  }

}
